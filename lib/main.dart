import 'package:flutter/material.dart';
import 'package:shamo_ecommerce/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/sign-in': (context) => const SignInPage(),
      '/sign-up': (context) => const SignUpPage(),
      '/home': (context) => const MainPage(),
      '/detail-chat': (context) => const DetailChatPage(),
      '/edit-profile': (context) => const EditProfilePage(),
      '/product': (context) => ProductPage(),
      '/cart': (context) => const CartPage(),
      '/checkout': (context) => const CheckoutPage(),
      '/checkout-success': (context) => const CheckoutSuccessPage()
    });
  }
}
