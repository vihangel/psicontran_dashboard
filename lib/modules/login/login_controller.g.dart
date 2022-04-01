// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$nameAtom = Atom(name: '_LoginControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isVisibleAtom = Atom(name: '_LoginControllerBase.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  final _$verifyAsyncAction = AsyncAction('_LoginControllerBase.verify');

  @override
  Future<void> verify() {
    return _$verifyAsyncAction.run(() => super.verify());
  }

  final _$passwordRecoveryAsyncAction =
      AsyncAction('_LoginControllerBase.passwordRecovery');

  @override
  Future<void> passwordRecovery() {
    return _$passwordRecoveryAsyncAction.run(() => super.passwordRecovery());
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  String? validateField(String? value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.validateField');
    try {
      return super.validateField(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsVisible() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setIsVisible');
    try {
      return super.setIsVisible();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.reset');
    try {
      return super.reset();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
password: ${password},
isVisible: ${isVisible}
    ''';
  }
}
