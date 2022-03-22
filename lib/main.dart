import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initHive();

  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ), //)
  );
}

// Future<void> initHive() async {
//   final pathDir = await path_provider.getApplicationDocumentsDirectory();
//   Hive.init(pathDir.path);

//   Hive.registerAdapter<UserModel>(UserModelAdapter());
// }
