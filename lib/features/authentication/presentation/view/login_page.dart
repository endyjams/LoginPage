import 'package:flutter/material.dart';
import 'package:login_page/features/authentication/presentation/widgets/login_form.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  Future<void> _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppBrowserView
      );
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: [
          LoginForm(),
          InkWell(
            child: Text('Política de Privacidade'),
            onTap: () => _launchURL(Uri.parse('https://google.com')),
          )
        ],
      ),
    );
  }
}
