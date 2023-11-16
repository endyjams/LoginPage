import 'package:flutter/material.dart';
import 'package:login_page/core/theme/gradient_background.dart';
import 'package:login_page/features/authentication/presentation/view/login_page.dart';
import 'package:login_page/features/authentication/state/login_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      Provider<LoginStore>(
        create: (_) => LoginStore(),
        child: LoginPageApp(),
      ),
    );

class LoginPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
