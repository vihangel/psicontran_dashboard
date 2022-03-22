import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bot_toast/bot_toast.dart';

class AppWidget extends StatelessWidget {
  final botToastBuilder = BotToastInit();

  AppWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411.4, 683.4),
      builder: () => MaterialApp(
        locale: DevicePreview.locale(context),
        // builder: (context, child) {
        //   child = DevicePreview.appBuilder(context, child);
        //   child = botToastBuilder(context, child);
        //   return child;
        // },
        debugShowCheckedModeBanner: false,
        title: 'Psicotran',
        theme: ThemeData(
            fontFamily: 'Inter',
            primarySwatch: const MaterialColor(
              0xFF242b3d,
              <int, Color>{
                50: Color.fromARGB(255, 36, 43, 61), //10%
                100: Color.fromARGB(255, 36, 43, 61), //20%
                200: Color.fromARGB(255, 36, 43, 61), //30%
                300: Color.fromARGB(255, 36, 43, 61), //40%
                400: Color.fromARGB(255, 36, 43, 61), //50%
                500: Color.fromARGB(255, 36, 43, 61), //60%
                600: Color.fromARGB(255, 36, 43, 61), //70%
                700: Color.fromARGB(255, 36, 43, 61), //80%
                800: Color.fromARGB(255, 36, 43, 61), //90%
                900: Color.fromARGB(255, 36, 43, 61), //100%
              },
            ),
            //primarySwatch: ColorsApp.primary,
            canvasColor: Colors.transparent),
        initialRoute: '/login',
      ).modular(),
    );
  }
}
