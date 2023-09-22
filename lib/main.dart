import 'package:a_simple_bank_app/presentations/all_customer_screen.dart';
import 'package:a_simple_bank_app/presentations/user_homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      '/CustomerScreen': (context) => const CustomerScreen()
    },
  ));
}
