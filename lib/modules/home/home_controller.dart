import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:psicontran_dashboard/data/models/user/user_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<UserLoginModel> user = ObservableList();

  @observable
  String image = "";

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
  }

  @action
  void initialize() {
    getUser();
  }

  @action
  Future<void> getUser() async {
    if (user.isEmpty) {
      user.clear();
      // user.addAll(await UserRepository.getUser());

    }
  }

  @observable
  Widget imgPerfil = Container();

  @action
  Future<void> logout() async {
    Modular.to.navigate("/login");
    // Future.delayed(const Duration(seconds: 2), () {
    //   user.clear();
    // });
  }
}
