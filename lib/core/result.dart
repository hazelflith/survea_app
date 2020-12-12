import 'package:flutter/material.dart';

class Result<T> {
  ResultType resultType;
  String message;
  int statusCode;
  T data;

  Result(this.resultType, this.message, {this.statusCode, this.data});

  Color get color {
    switch (resultType) {
      case ResultType.Success:
        return Colors.green;
      case ResultType.Warning:
        return Colors.orange;
      case ResultType.Error:
        return Colors.red;
        break;
    }
  }

  IconData get iconData {
    switch (resultType) {
      case ResultType.Success:
        return Icons.check;
      case ResultType.Warning:
        return Icons.warning;
      case ResultType.Error:
        return Icons.error_outline;
      default:
        return Icons.info_outline;
    }
  }
}

enum ResultType { Success, Warning, Error }
