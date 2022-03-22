import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_controller.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_controller.dart';
import 'modules/login/login_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController()),
    Bind.lazySingleton((i) => HomeController()),
    // Bind.lazySingleton((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => const HomePage()),
    ChildRoute('/login', child: (_, args) => const LoginPage()),
  ];
}
