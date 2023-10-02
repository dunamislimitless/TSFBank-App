import 'package:a_simple_bank_app/CustomWidget/custom_list_widget.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('All Customers',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontFamily: 'SF-Pro-Display')),
      ),
      body: ListView(
        children: [
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Rebbie Abike',
              accountNumber: '3082916131'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'John Doe',
              accountNumber: '0161643275'),
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Logan Freeman',
              accountNumber: '4534234565'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'Daren Flick',
              accountNumber: '1234567890'),
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Rebbie Jones ',
              accountNumber: '3082916131'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'Sam Stones',
              accountNumber: '0161643275'),
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Hesley lora',
              accountNumber: '3082916131'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'Dunamis Limitless',
              accountNumber: '0161643275'),
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Rebbie Jones ',
              accountNumber: '3082916131'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'Sam Stones',
              accountNumber: '0161643275'),
          CustomCard(
              image: 'assets/images/picture.png',
              accountName: 'Hesley lora',
              accountNumber: '3082916131'),
          CustomCard(
              image: 'assets/images/dunamis.png',
              accountName: 'Dunamis Limitless',
              accountNumber: '0161643275')
        ],
      ),
    );
  }
}
