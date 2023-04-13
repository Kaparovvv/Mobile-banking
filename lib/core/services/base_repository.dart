import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/api_client.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import '../utils/dependencies_injection.dart';

enum RestMethod { get, post, put, delete, patch }

abstract class BaseRepository {
  final NetworkInfo networkInfo = di<NetworkInfo>();
  final APIClient restClientService = di<APIClient>();

  Future<Either<Failure, dynamic>> call(
    RestMethod method,
    String url, {
    dynamic body,
    dynamic parametres,
    CancelToken? cancelToken,
    Options? options,
    Function(int, int)? onSendProgress,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        Response response;
        switch (method) {
          case RestMethod.get:
            response = await restClientService.get(
              url,
              params: parametres,
              cancelToken: cancelToken,
              options: options,
            );
            break;

          case RestMethod.post:
            response = await restClientService.post(
              url,
              body: body,
              parametres: parametres,
              options: options,
            );
            break;

          case RestMethod.put:
            response = await restClientService.put(
              url,
              body: body,
              options: options,
            );
            break;

          case RestMethod.delete:
            response = await restClientService.delete(
              url,
              body: body,
              options: options,
              params: parametres,
            );
            break;

          case RestMethod.patch:
            response = await restClientService.patch(
              url,
              body: body,
              options: options,
              onSendProgress: onSendProgress,
            );
            break;
        }
        return Right(response.data);
      } on ServerException catch (exception) {
        return Left(ServerFailure(response: exception.response));
      } on DioError catch (exception) {
        return Left(DioFailure(response: exception.response));
      } on SocketException {
        return Left(NoConnectionFailure());
      } on Exception {
        return Left(NoConnectionFailure());
      } catch (exception) {
        return Left(NoConnectionFailure());
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}
