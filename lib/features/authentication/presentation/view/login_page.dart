import 'package:flutter/material.dart';
import 'package:login_page/core/theme/gradient_background.dart';
import 'package:login_page/features/authentication/presentation/widgets/login_form.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: GradientBackground()),
      child: Center(
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: LoginForm(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () =>
                          _launchURL(Uri.parse('https://www.google.com')),
                      child: const Text(
                        'Política de Privacidade',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
