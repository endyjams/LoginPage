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
                  bottom: MediaQuery.of(context).size.height * 0.008,
                ),
                child: Text(
                  'Usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
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
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.025,
                  ),
                  errorText: loginStore.usernameError,
                  errorStyle: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none
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
                  bottom: MediaQuery.of(context).size.height * 0.008,
                ),
                child: Text(
                  'Senha',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
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
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.025,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none
                  ),
                  errorText: loginStore.passwordError,
                  errorStyle: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
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
            backgroundColor: const Color(0xFF54c477),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.16,
              vertical: MediaQuery.of(context).size.height * 0.0185,
            ),
          ),
          child: const Text('Entrar'),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.045),
        buildLoginForm(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        buildPasswordForm(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.045),
        buildEnterButton(),
      ],
    );
  }
}
