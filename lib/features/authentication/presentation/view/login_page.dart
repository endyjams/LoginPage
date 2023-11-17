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
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
            minWidth: constraints.maxWidth
          ),
          decoration: BoxDecoration(
            gradient: gradientBackground(),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  child: Image.asset(
                    'assets/images/target_sistemas_logo.png',
                    width: MediaQuery.of(context).size.width *
                        0.35, // Specify your desired width
                    height: MediaQuery.of(context).size.height *
                        0.35, // Specify your desired height
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: LoginForm(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () => _launchURL(Uri.parse('https://www.google.com')),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.045,
                    ),
                    child: const Text(
                      'Política de Privacidade',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFd2eaea)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
