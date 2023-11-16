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
  bool get isPasswordValid => password.length >= 2 && password.length <= 20 &&
      RegExp(r'^[a-zA-Z0-9]+$').hasMatch(password) &&
      !password.endsWith(' ');

  @computed
  bool get canLogin => isUsernameValid && isPasswordValid && usernameError == null && passwordError == null;

  @action
  void validateUsername() {
    if (username.isEmpty) {
      usernameError = 'Please enter your username';
    } else if (!isUsernameValid) {
      usernameError = 'Username cannot exceed 20 characters and cannot end with space';
    } else {
      usernameError = null;
    }
  }

  @action
  void validatePassword() {
    if (password.isEmpty) {
      passwordError = 'Please enter your password';
    } else if (!isPasswordValid) {
      passwordError = 'Password must be at least 2 characters long, no special characters, and less than 20 characters';
    } else {
      passwordError = null;
    }
  }
}
