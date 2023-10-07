import 'package:a_simple_bank_app/CustomWidget/custom_Button.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: CustomText(
              text: 'Transfer Money', size: 24, fontweight: FontWeight.w800)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            const Center(
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/picture.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomText(
                text: 'Rebbie Abike', size: 20, fontweight: FontWeight.w500),
            const SizedBox(
              height: 10,
            ),
            CustomText(
                text: '3082916131', size: 18, fontweight: FontWeight.normal),
            const SizedBox(
              height: 10,
            ),
            CustomText(text: 'Amount', size: 20, fontweight: FontWeight.w500),
            const SizedBox(
              height: 5,
            ),
            const CustomTextField(hinttext: 'Enter Amount'),
            const SizedBox(
              height: 10,
            ),
            CustomText(text: 'Remarks', size: 20, fontweight: FontWeight.w500),
            const SizedBox(
              height: 5,
            ),
            const CustomTextField(hinttext: 'Enter Description'),
            const SizedBox(
              height: 30,
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.of(context).pushNamed('/ProfilePage');
            //   },
            CustomButton(
              text: 'Transfer',
              buttonColor: const Color.fromARGB(255, 80, 79, 79),
              width: 250,
              textSize: 15,
              fontweight: FontWeight.w600,
              onTap: () {
                Navigator.of(context).pushNamed('/ProfilePage');
              },
            ),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext});

  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Center(
          child: TextFormField(
            cursorColor: Colors.grey,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF-Pro-Display',
                  color: Color(0XffB3B3B3)),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.text,
      required this.size,
      required this.fontweight,
      this.color});
  final String text;
  final double size;
  final FontWeight fontweight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: fontweight,
          color: Colors.white,
          fontFamily: 'SF-Pro-Display'),
    );
  }
}
