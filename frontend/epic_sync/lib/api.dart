import 'dart:io';
import 'connection/connection.dart';

class Api {
  Api._();
  static final Connection conn = Connection();

  static Connection get() {
    return conn;
  }
}
