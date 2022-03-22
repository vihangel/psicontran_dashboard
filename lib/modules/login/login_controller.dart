import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:psicontran_dashboard/data/models/user/user_model.dart';
import 'package:psicontran_dashboard/data/repository/user/user_repository.dart';

import '../../services/users/users_service.dart';
import '../../shared/constants.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String name = "";

  @observable
  String password = "";

  @observable
  bool isSubmited = false;

  @action
  String? validateUser() =>
      name == "" && isSubmited ? "O campo não pode ser vazio" : null;

  @action
  String? validatePassword() =>
      password == "" && isSubmited ? "A senha não pode ser vazia" : null;

  @observable
  bool isVisible = false;

  @action
  void setIsVisible() {
    isVisible = !isVisible;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void setUser(String value) {
    name = value;
  }

  final _userService = UserService(Dio());

  @action
  Future<void> verify() async {
    isSubmited = true;
    String response = "";
    if (validatePassword() == null && validateUser() == null) {
      final user = UserLoginModel(
        name: name,
        password: password,
      );
      // try {
      //   response = await _userService.login(user).toString();
      // } catch (e) {
      //   print(e);
      // }
      // print(response.toString());
      //Salvar cookies
      //await UserRepository.saveUser([user]);
      reset();

      Modular.to.navigate("/home");
    }
  }

  @action
  Future<void> passwordRecovery() async {
    isSubmited = true;

    if (validateUser() == null) {
      Modular.to.pop();
      reset();
    }
  }

  @action
  void reset() {
    name = "";
    password = "";
    isVisible = false;
    isSubmited = false;
  }
}
