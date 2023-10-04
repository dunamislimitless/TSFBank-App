import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const CustomText(
              text: 'Transfer Money', size: 24, fontweight: FontWeight.w800)),
      body: const Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Center(
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/picture.png'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
              text: 'Rebbie Abike', size: 20, fontweight: FontWeight.w500),
          SizedBox(
            height: 10,
          ),
          CustomText(
              text: '3082916131', size: 18, fontweight: FontWeight.normal),
          SizedBox(
            height: 10,
          ),
          CustomText(text: 'Amount', size: 20, fontweight: FontWeight.w500),
          SizedBox(
            height: 5,
          ),
          CustomTextField(hinttext: 'Enter Amount'),
          SizedBox(
            height: 10,
          ),
          CustomText(text: 'Remarks', size: 20, fontweight: FontWeight.w500),
          SizedBox(
            height: 5,
          ),
          CustomTextField(hinttext: 'Enter Description'),
        ],
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

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.size,
      required this.fontweight});
  final String text;
  final double size;
  final FontWeight fontweight;

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
