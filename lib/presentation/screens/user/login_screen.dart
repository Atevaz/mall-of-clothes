import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/view/login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginView()),
    );
  }
}


