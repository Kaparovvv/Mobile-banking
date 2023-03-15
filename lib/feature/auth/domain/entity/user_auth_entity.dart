import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String token;
  final String phoneNumber;
  final String fullName;
  final String roles;

  const UserAuthEntity({
    required this.token,
    required this.phoneNumber,
    required this.fullName,
    required this.roles,
  });

  @override
  List<Object?> get props => [token];
}
