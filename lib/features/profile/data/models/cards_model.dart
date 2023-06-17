import 'package:my_family_flutter/features/profile/domain/entity/cars_entity.dart';

class CardListModel extends CardListEntity {
  const CardListModel({required super.list});

  factory CardListModel.fromJson(List<dynamic> json) => CardListModel(
        list: List<CardModel>.from(json.map((e) => CardModel.fromJson(e))),
      );
}

class CardModel extends CardEntity {
  const CardModel({
    required super.id,
    required super.alias,
    required super.expirationDate,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        id: json['id'] as String,
        alias: json["alias"] as String,
        expirationDate: json["expirationDate"] as String,
      );
}
