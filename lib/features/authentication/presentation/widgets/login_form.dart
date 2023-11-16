import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_page/features/authentication/state/login_store.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  @override
  Widget build(BuildContext context) {
    final _loginStore = Provider.of<LoginStore>(context);

    return Form(
      child: Column(
        children: <Widget>[
          Observer(
            builder: (_) => TextFormField(
              onChanged: (value) {
                _loginStore.username = value;
                _loginStore.validateUsername();
              },
              decoration: InputDecoration(
                labelText: 'Username',
                errorText: _loginStore.usernameError,
              ),
            ),
          ),
          Observer(
            builder: (_) => TextFormField(
              onChanged: (value) {
                _loginStore.password = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: _loginStore.passwordError,
              ),
            ),
          ),
          Observer(
            builder: (_) => ElevatedButton(
              onPressed: () {
                _loginStore.validateUsername();
                _loginStore.validatePassword();
              },
              child: const Text('Login'),
            ),
          ),
          // Add more widgets as needed
        ],
      ),
    );
  }
}
