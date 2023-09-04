import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errMessage);
  factory ServiceFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection Timeout with ApiServices');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send Timeout with ApiServices');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive Timeout with ApiServices');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServiceFailure('Request To ApiServer is Canceled');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServiceFailure('No Internet Connection');
        } else {
          return ServiceFailure('Unexpected Error, Please try again');
        }
      default:
        return ServiceFailure('Opps There was an Error, please Try Again');
    }
  }
  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('Your requset not Found,Please Try Later!');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal server error,Please Try Later!');
    } else {
      return ServiceFailure('Opps There was an Error, please Try Again');
    }
  }
}
