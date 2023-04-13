// ignore_for_file: public_member_api_docs, sort_constructors_first
class ServerException implements Exception {}

class CacheException implements Exception {
  final String message;
  CacheException({required this.message});
}
