import 'package:flutter/material.dart';
import 'package:login_page/features/authentication/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: LoginForm(),
      ),
    );
  }
}
