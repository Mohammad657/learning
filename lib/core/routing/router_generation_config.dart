import 'package:go_router/go_router.dart';
import 'package:untitled1/core/features/auth/forgot_password.dart';
import 'package:untitled1/core/features/auth/login_screen.dart';
import 'package:untitled1/core/features/auth/register_screen.dart';
import 'package:untitled1/core/features/on_boarding_screens/on_boarding_screen.dart';
import 'package:untitled1/core/routing/app_routes.dart';

class RouterGenerationConfig {
  static GoRouter goRouter =
      GoRouter(initialLocation: AppRoutes.onBoardingScreen, routes: [
    GoRoute(
      path: AppRoutes.onBoardingScreen,
      name: AppRoutes.onBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.registerScreen,
      name: AppRoutes.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.forgetPassword,
      name: AppRoutes.forgetPassword,
      builder: (context, state) => const ForgetPasswordPage(),
    ),
  ]);
}
