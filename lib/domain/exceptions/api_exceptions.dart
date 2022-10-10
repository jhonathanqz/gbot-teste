abstract class ApiExceptions implements Exception {
  final String message;

  ApiExceptions(this.message);
}

class ApiJwtTokenException extends ApiExceptions {
  ApiJwtTokenException(String message) : super(message);
}

class ApiErrorException extends ApiExceptions {
  ApiErrorException(String message) : super(message);
}

class ApiInternalException extends ApiExceptions {
  ApiInternalException(String message) : super(message);
}

class ApiTimeoutException extends ApiExceptions {
  ApiTimeoutException(String message) : super(message);
}
