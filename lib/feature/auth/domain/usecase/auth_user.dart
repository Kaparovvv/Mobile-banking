import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../entity/user_auth_entity.dart';
import '../repository/auth_repository.dart';

class AuthUser extends UseCase<UserAuthEntity, AuthUserParams> {
  final AuthRepository authRepository;

  AuthUser(this.authRepository);

  @override
  Future<Either<Failure, UserAuthEntity>> call(AuthUserParams params) async {
    return await authRepository.authUser(params.phoneNumber, params.password);
  }
}

class AuthUserParams extends Equatable {
  final String phoneNumber;
  final String password;

  const AuthUserParams({
    required this.phoneNumber,
    required this.password,
  });

  @override
  List<Object?> get props => [phoneNumber, password];
}
