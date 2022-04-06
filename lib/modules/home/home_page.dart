import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localstorage/localstorage.dart';
import 'package:mobx/mobx.dart';

import 'package:psicontran_dashboard/shared/resources/colors.dart';
import 'package:psicontran_dashboard/shared/resources/images.dart';
import 'package:psicontran_dashboard/shared/resources/text_style.dart';

import 'home_controller.dart';

final controller = Modular.get<HomeController>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static List<Widget> widget = <Widget>[
    Center(
        child: Icon(Icons.build_circle_outlined,
            color: Colors.grey[400], size: 200)),
    const Center(
        child:
            Icon(Icons.build_circle_outlined, color: Colors.black, size: 200)),
  ];

  @override
  Widget build(BuildContext context) {
    controller.initialize();

    return Observer(builder: (context) {
      final size = MediaQuery.of(context).size;
      if (!controller.isLoaded) {
        return const Center(
          child: const CircularProgressIndicator(),
        );
      }
      return SafeArea(
        child: Scaffold(
          backgroundColor: ColorsApp.white,
          appBar: AppBar(
            // centerTitle: true,
            iconTheme: const IconThemeData(color: ColorsApp.primary),
            backgroundColor: ColorsApp.white,
            elevation: 1,
            title: Text("Psicotran", style: TextStyles.bold),

            // actions: [
            //   IconButton(
            //       onPressed: () {},
            //       icon: const Icon(Icons.notifications_active_outlined)),
            // ],
          ),
          body: Observer(builder: (context) {
            return FittedBox(
              child: Container(
                width: 400,
                height: 670,
                child: Column(
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: const [
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 1,
                    //       child: Icon(Icons.edit),
                    //     ),
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 3,
                    //       child: Text("Nome"),
                    //     ),
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 2,
                    //       child: Text("CPF"),
                    //     ),
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 3,
                    //       child: Text("Autoescola"),
                    //     ),
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 1,
                    //       child: Text("Pago"),
                    //     ),
                    //     Flexible(
                    //       fit: FlexFit.loose,
                    //       flex: 1,
                    //       child: Text("Situação"),
                    //     ),
                    //   ],
                    // ),
                    // Divider(
                    //   height: 2,
                    //   thickness: 1,
                    //   color: ColorsApp.primary,
                    // ),
                    ListView.builder(
                      itemCount: controller.usersList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Flexible(
                              fit: FlexFit.loose,
                              flex: 1,
                              child: Icon(Icons.edit),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 3,
                              child: Text(
                                  controller.usersList[index].name.toString()),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 2,
                              child: Text(
                                  controller.usersList[index].cpf.toString()),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 3,
                              child: Text(controller.usersList[index].autoescola
                                  .toString()),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 1,
                              child:
                                  controller.usersList[index].taxa == "fechada"
                                      ? const Icon(Icons.check)
                                      : const Icon(Icons.close),
                              // : Icon(Icons.cancel),
                            ),
                            const Flexible(
                              fit: FlexFit.loose,
                              flex: 1,
                              child: Icon(Icons.play_arrow_rounded,
                                  color: Colors.green),
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          }),
          drawer: Drawer(
            backgroundColor: ColorsApp.white,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    ImagesApp.logo,
                    height: 30,
                    color: ColorsApp.primary,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: ColorsApp.primary,
                  ),
                  title: Text(
                    'Candidatos',
                    style: TextStyles.regular,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.money,
                    color: ColorsApp.primary,
                  ),
                  title: Text(
                    'Caixa',
                    style: TextStyles.regular,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.check_box,
                    color: ColorsApp.primary,
                  ),
                  title: Text(
                    'Testes',
                    style: TextStyles.regular,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.list_alt,
                    color: ColorsApp.primary,
                  ),
                  title: Text(
                    'Relatórios',
                    style: TextStyles.regular,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.power_settings_new,
                    color: ColorsApp.primary,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyles.regular,
                  ),
                  onTap: () {
                    controller.logout();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
