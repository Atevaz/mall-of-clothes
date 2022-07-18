import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/forget_passorord_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/onBorarding_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/register_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/verification_code_screen.dart';

import '../screens/user/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rOnBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case AppRouterNames.rLoginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRouterNames.rRegisterRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRouterNames.rForgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case AppRouterNames.rVerificationCodeRoute:
        return MaterialPageRoute(builder: (_) => VerificationCodeScreen());

      default:
        return null;
    }
  }
}
