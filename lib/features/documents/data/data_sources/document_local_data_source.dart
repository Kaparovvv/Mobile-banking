import 'dart:convert';
import 'dart:developer';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/features/documents/data/models/document_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/exceptions.dart';

abstract class DocumentLocalDataSource {
  Future<DocumentModel> getDocumentDataFromCache();
  Future<void> documentDataToCache(DocumentModel documentEntity);
}

class DocumentLocalDataSourceImpl implements DocumentLocalDataSource {
  final SharedPreferences sharedPreferences;

  DocumentLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<DocumentModel> getDocumentDataFromCache() {
    final documentData = sharedPreferences.getString(
      CachedNames.cacheUserData,
    );
    if (documentData != null && documentData.isNotEmpty) {
      log(documentData.toString());
      return Future.value(
        DocumentModel.fromJson(json.decode(documentData)),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> documentDataToCache(DocumentModel userDataModel) async {}
}
