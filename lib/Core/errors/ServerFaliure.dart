
import 'package:dio/dio.dart';
import 'package:newsapp/Core/errors/Faliure.dart';

class ServerFaliure extends Faliure {
  ServerFaliure(super.message);

  factory ServerFaliure.DioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure(
            'Connection timed out while trying to reach the server. Please try again.');
      case DioExceptionType.sendTimeout:
        return ServerFaliure(
            'Request timed out while sending data. Please try again.');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure(
            'Response timed out while waiting for data from the server. Please try again.');
      case DioExceptionType.badCertificate:
        return ServerFaliure(
            'The server’s security certificate is invalid. Please check your connection or contact support.');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            dioError.response!.statusCode ?? 100, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliure('The request was canceled. Please try again.');
      case DioExceptionType.connectionError:
        return ServerFaliure(
            'Network connection error. Please check your connection and try again.');
      case DioExceptionType.unknown:
        return ServerFaliure(
            'An unexpected error occurred. Please check your network and try again.');
    }
  }
  factory ServerFaliure.fromResponse(int stutusCode, dynamic response) {
    if (stutusCode == 400 || stutusCode == 401 || stutusCode == 403) {
      return ServerFaliure(response['error']['message']);
    } else if (stutusCode == 404) {
      return ServerFaliure(
          'The request does not found. please try again later!');
    }
    return ServerFaliure('There is an error. Try Again!');
  }
}