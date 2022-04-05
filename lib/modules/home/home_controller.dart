import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:localstorage/localstorage.dart';

import 'package:mobx/mobx.dart';

import 'package:psicontran_dashboard/data/models/user/user_model.dart';

import '../../data/models/user/local_storage/local_storage_model.dart';
import '../../services/users/users_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<LocalStorageModel> user = [];

  @observable
  String image = "";

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
  }

  @action
  Future<void> initialize() async {
    await getUserLogin();
    await getUser();
  }

  final _userService = UserService(Dio());

  @action
  Future<void> getUserLogin() async {
    LocalStorage storage = LocalStorage('local_storage');
    await storage.ready;
    user.clear();
    user.add(LocalStorageModel(
      token: "Bearer " + await storage.getItem('token'),
      name: await storage.getItem('name'),
      email: await storage.getItem('email'),
    ));
    print("token: " + user[0].token.toString());
  }

  @action
  Future<void> getUser() async {
    try {
      print(await _userService.listUsers(user[0].token.toString()));
    } on DioError catch (e) {
      print(e.response?.toString());

      print("Erro " +
          (e.response?.statusCode).toString() +
          " - " +
          (e.response?.statusMessage).toString());
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
