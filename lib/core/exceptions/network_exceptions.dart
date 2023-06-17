import 'package:dio/dio.dart';

class NetworkExceptions implements Exception {
  late String title;
  late String message;
  final int? statusCode;
  Response? response;

  NetworkExceptions({this.statusCode = -3, this.response, this.title = ''}) {
    switch (statusCode) {
      case -3:
        message = 'Ошибка подключения к интернету';
        title = 'No Internet';
        break;
      case 500:
        message = 'Внутренняя ошибка сервера';
        title = 'Внутренняя ошибка сервера';
        break;
      case 501:
        message = 'Не реализовано';
        title = 'Не реализовано';
        break;
      case 502:
        message = 'Неверный шлюз';
        title = 'Неверный шлюз';
        break;
      case 503:
        message = 'Сервис недоступен';
        title = 'Сервис недоступен';
        break;
      default:
        title = "Не найдено";
        message = title;
        break;
    }
  }

  @override
  String toString() => message;
}
