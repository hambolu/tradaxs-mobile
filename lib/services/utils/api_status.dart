class Success {
  int? code;
  String? message;
  Success({this.code, this.message});
}

class Failure {
  int? code;
  String? errorMessage;
  Failure({this.code, this.errorMessage});
}

class Error {
  int? code;
  String? message;

  Error({this.code, this.message});
}
