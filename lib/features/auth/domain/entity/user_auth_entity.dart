import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String token;
  final String id;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  final String roles;

  const UserAuthEntity({
    required this.id,
    required this.token,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.roles,
  });

  @override
  List<Object?> get props => [
        token,
        id,
        phoneNumber,
        firstName,
        lastName,
        roles,
      ];
}
