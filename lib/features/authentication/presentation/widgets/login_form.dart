import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_page/features/authentication/state/login_store.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginStore = Provider.of<LoginStore>(context);

    Widget buildLoginForm() {
      return Observer(
        builder: (_) => Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.005,
                ),
                child: Text(
                  'Usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                  ),
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  loginStore.username = value;
                  loginStore.validateUsername();
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  errorText: loginStore.usernameError,
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildPasswordForm() {
      return Observer(
        builder: (_) => Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.005,
                ),
                child: Text(
                  'Senha',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                  ),
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  loginStore.password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  errorText: loginStore.passwordError,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildEnterButton() {
      return Observer(
        builder: (_) => ElevatedButton(
          onPressed: () {
            loginStore.validateUsername();
            loginStore.validatePassword();
            debugPrint('User tried to login');
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: const Color(0xFF44bd6e),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.16,
              vertical: MediaQuery.of(context).size.height * 0.0185,
            ),
          ),
          child: const Text('Entrar'),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildLoginForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          buildPasswordForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.045),
          buildEnterButton(),
        ],
      ),
    );
  }
}
