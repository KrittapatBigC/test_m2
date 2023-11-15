import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Modular.get<AuthService>();

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (authService.login('user', 'pass')) {
              Modular.to.pushNamed('/home');
            }
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
