// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CardListEntity extends Equatable {
  final List<CardEntity> list;

  const CardListEntity({
    required this.list,
  });

  @override
  List<Object?> get props => [list];
}

class CardEntity extends Equatable {
  final String id;
  final String alias;
  final String expirationDate;

  const CardEntity({
    required this.id,
    required this.alias,
    required this.expirationDate,
  });

  @override
  List<Object?> get props => [
        id,
        alias,
        expirationDate,
      ];
}
