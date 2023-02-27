import 'package:flutter/material.dart';
import 'package:my_app/pages/sign_in.dart';
import 'package:my_app/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showSignIn = true;

  void togglePages() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
