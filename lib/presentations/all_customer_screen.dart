import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Customers',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontFamily: 'SF-Pro-Display')),
      ),
    );
  }
}
