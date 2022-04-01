import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:psicontran_dashboard/modules/login/password_recovery/password_page.dart';

import 'package:psicontran_dashboard/shared/resources/colors.dart';
import 'package:psicontran_dashboard/shared/resources/images.dart';
import 'package:psicontran_dashboard/shared/resources/text_style.dart';

import 'login_controller.dart';

final controller = Modular.get<LoginController>();
TextEditingController userController = TextEditingController();
TextEditingController passController = TextEditingController();
final formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorsApp.gray,
        body: Observer(builder: (context) {
          return SizedBox(
            width: size.width,
            height: size.height,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.15,
                    ),
                    decoration: const BoxDecoration(
                      color: ColorsApp.primary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60.0),
                        bottomLeft: Radius.circular(60.0),
                      ),
                    ),
                    width: size.width,
                    height: size.height * 0.20,
                    //color: ColorsApp.primary,
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Login",
                          style: TextStyles.titleRegular,
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        TextFormField(
                          controller: userController,
                          validator: controller.validateField,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "Usuario",
                            border: InputBorder.none,
                            filled: true,
                            fillColor: ColorsApp.white,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        TextFormField(
                          controller: passController,
                          validator: controller.validateField,
                          obscureText: !controller.isVisible,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: ColorsApp.primary,
                              ),
                              onPressed: () {
                                controller.setIsVisible();
                              },
                            ),
                            hintText: "Senha",
                            border: InputBorder.none,
                            filled: true,
                            fillColor: ColorsApp.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Modular.to.push(MaterialPageRoute(
                            //     builder: (context) => const PasswordPage()));
                          },
                          child: Text(
                            "Esqueceu a senha?",
                            style: TextStyles.regular,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              controller.name = userController.text;
                              controller.password = passController.text;
                              controller.verify();
                            }
                          },
                          child: Container(
                            width: size.width,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorsApp.primary,
                            ),
                            child: Text(
                              "Entrar",
                              style: TextStyles.buttonBold,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
