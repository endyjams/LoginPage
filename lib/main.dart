import 'package:flutter/material.dart';
import 'package:login_page/features/authentication/presentation/view/login_page.dart';
import 'package:login_page/features/authentication/state/login_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      Provider<LoginStore>(
        create: (_) => LoginStore(),
        child: const LoginPageApp(),
      ),
    );

class LoginPageApp extends StatelessWidget {
  const LoginPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
