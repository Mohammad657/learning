import 'package:go_router/go_router.dart';
import 'package:untitled1/core/features/screen/auth/Create_new_password.dart';
import 'package:untitled1/core/features/screen/auth/forgot_password.dart';
import 'package:untitled1/core/features/screen/auth/login_screen.dart';
import 'package:untitled1/core/features/screen/auth/otp_verification.dart';
import 'package:untitled1/core/features/screen/auth/password_changed.dart';
import 'package:untitled1/core/features/screen/auth/register_screen.dart';
import 'package:untitled1/core/features/on_boarding_screens/on_boarding_screen.dart';
import 'package:untitled1/core/features/screen/main/home_Screen.dart';
import 'package:untitled1/core/features/screen/main/main_screen.dart';
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
     GoRoute(
      path: AppRoutes.createNewPassword,
      name:  AppRoutes.createNewPassword,
      builder: (context, state) => const CreateNewPassword(),
    ),
     GoRoute(
      path: AppRoutes.passwordChanged,
      name: AppRoutes.passwordChanged,
      builder: (context, state) => const PasswordChanged(),
    ),
    GoRoute(
      path: AppRoutes.otpVerification,
      name: AppRoutes.otpVerification,
      builder: (context, state) => const OtpVerification(),
    ),
        GoRoute(
      path: AppRoutes.mainScreen,
      name: AppRoutes.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
     GoRoute(
      path: AppRoutes.homeScreen,
      name: AppRoutes.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
