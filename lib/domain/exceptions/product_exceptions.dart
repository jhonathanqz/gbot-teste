abstract class ProductExceptions implements Exception {
  final String message;

  ProductExceptions(this.message);
}

class ProductNotFoundException extends ProductExceptions {
  ProductNotFoundException(String message) : super(message);
}

class ProductErrorException extends ProductExceptions {
  ProductErrorException(String message) : super(message);
}
