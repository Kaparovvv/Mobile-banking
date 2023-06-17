import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String id;
  final String token;

  const UserAuthEntity({
    required this.id,
    required this.token,
  });

  @override
  List<Object?> get props => [
        token,
        id,
      ];
}
