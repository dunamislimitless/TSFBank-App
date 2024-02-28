import 'package:a_simple_bank_app/model/functions.dart';
import 'package:a_simple_bank_app/presentations/all_customer_screen.dart';
import 'package:a_simple_bank_app/presentations/otp_screen.dart';

import 'package:a_simple_bank_app/presentations/user_homepage.dart';
import 'package:a_simple_bank_app/storage/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dbHelper = DatabaseHelper();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dbHelper.init();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.containsKey('value') ? null : await insert();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      '/CustomerScreen': (context) => const CustomerScreen(),
      '/otpPage': (context) => const OtpPage()
    },
  ));
}
