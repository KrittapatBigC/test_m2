import 'package:flutter_modular/flutter_modular.dart';

import 'auth_service.dart';
import 'login_page.dart';


class AuthModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(AuthService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => LoginPage());
  }
}
