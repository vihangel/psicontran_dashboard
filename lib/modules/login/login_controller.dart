import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localstorage/localstorage.dart';

import 'package:mobx/mobx.dart';
import 'package:psicontran_dashboard/data/models/user/user_model.dart';
import 'package:psicontran_dashboard/data/repository/user/user_repository.dart';

import '../../data/models/user/response_login/response_login_model.dart';
import '../../services/users/users_service.dart';
import '../../shared/constants.dart';
import '../../shared/util.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String name = "";

  @observable
  String password = "";

  @action
  String? validateField(String? value) =>
      value == "" ? "O campo não pode ser vazio" : null;

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
    final ResponseUserLoginModel response;
    final LocalStorage storage = new LocalStorage('local_storage');
    final user = UserLoginModel(
      name: name,
      password: password,
    );
    try {
      response = await _userService.login(user);
      storage.setItem('token', response.token);
      storage.setItem('name', response.user!.name);
      storage.setItem('email', response.user!.email);
      Modular.to.navigate("/home");
      reset();
    } on DioError catch (e) {
      print(e.response?.toString());

      print("Erro " +
          (e.response?.statusCode).toString() +
          " - " +
          (e.response?.statusMessage).toString());
    }
  }

  @action
  Future<void> passwordRecovery() async {
    Modular.to.pop();
    reset();
  }

  @action
  void reset() {
    name = "";
    password = "";
    isVisible = false;
  }
}
