import 'package:cart_view_apps/screens/home/home_screen.dart';
import 'package:cart_view_apps/screens/login_success/login_success_screen.dart';
import 'package:cart_view_apps/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/widgets.dart';
import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  HomeScreen.routeName: (context) =>  HomeScreen(),
};
