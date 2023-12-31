import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/features/profile/data/models/cards_model.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:my_family_flutter/features/profile/data/models/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileLocalDataSource {
  Future<void> individualToCache(IndividualModel individualModel);
  Future<void> userDataToCache(UserDataModel userDataModel);
  Future<void> cardDataToCache(CardListModel userDataModel);
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProfileLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> individualToCache(IndividualModel individualModel) async {
    sharedPreferences.setString(
      CachedNames.cacheUserIin,
      individualModel.iin,
    );
  }

  @override
  Future<void> userDataToCache(UserDataModel userDataModel) async {
    await sharedPreferences.setString(
      CachedNames.cardNumber,
      userDataModel.cardNumber,
    );
    await sharedPreferences.setDouble(
      CachedNames.cardBalance,
      userDataModel.balance,
    );
  }

  @override
  Future<void> cardDataToCache(CardListModel userDataModel) async {
    await sharedPreferences.setString(
      CachedNames.cardID,
      userDataModel.list.first.id,
    );
  }
}
