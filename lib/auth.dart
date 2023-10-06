import 'package:auth_module/auth.dart';

class Auth {
  void setAuth(String value) {
    FileSystemManager().token = value;
  }

  String getAuth() {
    return FileSystemManager().token ?? "Token is null";
  }
}