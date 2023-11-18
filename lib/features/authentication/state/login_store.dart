import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  String? usernameError;

  @observable
  String? passwordError;

  @computed
  bool get isUsernameValid => username.length <= 20 && !username.endsWith(' ');

  @computed
  bool get isPasswordValid =>
      password.length >= 2 &&
      password.length <= 20 &&
      RegExp(r'^[a-zA-Z0-9]+$').hasMatch(password) &&
      !password.endsWith(' ');

  @computed
  bool get canLogin =>
      isUsernameValid &&
      isPasswordValid &&
      usernameError == null &&
      passwordError == null;

  @action
  void validateUsername() {
    if (username.isEmpty) {
      usernameError = 'Digite seu usuário';
    } else if (!isUsernameValid) {
      usernameError =
          'Usuário não pode exceder 20 caracteres\ne não pode terminar com espaço';
    } else {
      usernameError = null;
    }
  }

  @action
  void validatePassword() {
    if (password.isEmpty) {
      passwordError = 'Digite sua senha';
    } else if (!isPasswordValid) {
      passwordError =
          'A senha deve ter ao menos 2 caracteres,\nsem caracteres especiais, menos de 20 caracteres\ne não pode terminar com espaço';
    } else {
      passwordError = null;
    }
  }
}
