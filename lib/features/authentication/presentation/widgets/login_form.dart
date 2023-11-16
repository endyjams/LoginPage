import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_page/features/authentication/state/login_store.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginStore = Provider.of<LoginStore>(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Observer(
            builder: (_) => TextFormField(
              onChanged: (value) {
                loginStore.username = value;
                loginStore.validateUsername();
              },
              decoration: InputDecoration(
                labelText: 'Usuário',
                errorText: loginStore.usernameError,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Observer(
            builder: (_) => TextFormField(
              onChanged: (value) {
                loginStore.password = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                errorText: loginStore.passwordError,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Observer(
            builder: (_) => ElevatedButton(
              onPressed: () {
                loginStore.validateUsername();
                loginStore.validatePassword();
                debugPrint('User tried to login');
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.green.shade400,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.16,
                  vertical: MediaQuery.of(context).size.height * 0.0185,
                ),
              ),
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
