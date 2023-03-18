import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failure.dart';
import '../entity/user_auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserAuthEntity>> authUser(
    String phoneNumber,
    String password,
  );
}
