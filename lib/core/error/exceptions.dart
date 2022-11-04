class AppException implements Exception {
  final message;

  AppException([this.message]);

  String toString() {
    return "Exception: $message";
  }
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message);
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message]) : super(message);
}

class ConflictException extends AppException {
  ConflictException([String? message]) : super(message);
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException([String? message]) : super(message);
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException([String? message]) : super(message);
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message);
}

class NotConnectedException extends AppException {
  NotConnectedException([String? message]) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super(message);
}

class CacheException extends AppException {
  CacheException([String? message]) : super(message);
}

class ItemNotFoundException extends AppException {
  ItemNotFoundException([String? message]) : super(message);
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message);
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message);
}
