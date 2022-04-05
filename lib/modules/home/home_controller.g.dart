// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$userAtom = Atom(name: '_HomeControllerBase.user');

  @override
  List<LocalStorageModel> get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(List<LocalStorageModel> value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$imageAtom = Atom(name: '_HomeControllerBase.image');

  @override
  String get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$selectedIndexAtom = Atom(name: '_HomeControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$imgPerfilAtom = Atom(name: '_HomeControllerBase.imgPerfil');

  @override
  Widget get imgPerfil {
    _$imgPerfilAtom.reportRead();
    return super.imgPerfil;
  }

  @override
  set imgPerfil(Widget value) {
    _$imgPerfilAtom.reportWrite(value, super.imgPerfil, () {
      super.imgPerfil = value;
    });
  }

  final _$initializeAsyncAction = AsyncAction('_HomeControllerBase.initialize');

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  final _$getUserLoginAsyncAction =
      AsyncAction('_HomeControllerBase.getUserLogin');

  @override
  Future<void> getUserLogin() {
    return _$getUserLoginAsyncAction.run(() => super.getUserLogin());
  }

  final _$getUserAsyncAction = AsyncAction('_HomeControllerBase.getUser');

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$logoutAsyncAction = AsyncAction('_HomeControllerBase.logout');

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onItemTapped');
    try {
      return super.onItemTapped(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
image: ${image},
selectedIndex: ${selectedIndex},
imgPerfil: ${imgPerfil}
    ''';
  }
}
