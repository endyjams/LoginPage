// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool>? _$isUsernameValidComputed;

  @override
  bool get isUsernameValid =>
      (_$isUsernameValidComputed ??= Computed<bool>(() => super.isUsernameValid,
              name: '_LoginStore.isUsernameValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginStore.isPasswordValid'))
          .value;
  Computed<bool>? _$canLoginComputed;

  @override
  bool get canLogin => (_$canLoginComputed ??=
          Computed<bool>(() => super.canLogin, name: '_LoginStore.canLogin'))
      .value;

  late final _$usernameAtom =
      Atom(name: '_LoginStore.username', context: context);

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginStore.password', context: context);

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

  late final _$usernameErrorAtom =
      Atom(name: '_LoginStore.usernameError', context: context);

  @override
  String? get usernameError {
    _$usernameErrorAtom.reportRead();
    return super.usernameError;
  }

  @override
  set usernameError(String? value) {
    _$usernameErrorAtom.reportWrite(value, super.usernameError, () {
      super.usernameError = value;
    });
  }

  late final _$passwordErrorAtom =
      Atom(name: '_LoginStore.passwordError', context: context);

  @override
  String? get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(String? value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  late final _$_LoginStoreActionController =
      ActionController(name: '_LoginStore', context: context);

  @override
  void validateUsername() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
usernameError: ${usernameError},
passwordError: ${passwordError},
isUsernameValid: ${isUsernameValid},
isPasswordValid: ${isPasswordValid},
canLogin: ${canLogin}
    ''';
  }
}
