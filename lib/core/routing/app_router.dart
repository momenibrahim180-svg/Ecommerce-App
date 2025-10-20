import 'package:ecommerce_youtube/core/routing/routes.dart';
import 'package:ecommerce_youtube/features/auth/ui/screens/login_screen.dart';
import 'package:ecommerce_youtube/features/auth/ui/screens/otp_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<Widget>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.otp:
        return MaterialPageRoute(builder: (_) => OtpScreen());
    }
    return null;
  }
}
