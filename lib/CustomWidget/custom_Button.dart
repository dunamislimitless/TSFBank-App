import 'package:a_simple_bank_app/presentations/transfer_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.buttonColor,
      required this.text,
      required this.textSize,
      this.height,
      this.width,
      this.borderRadius,
      this.borderColor,
      required this.fontweight,
      required this.onTap});

  double? height;
  double? width;
  Color? buttonColor;
  final String text;
  final double textSize;
  final FontWeight fontweight;
  VoidCallback onTap;
  double? borderRadius;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 38,
        width: width ?? 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            color: buttonColor ?? Colors.white,
            border: Border.all(color: borderColor ?? Colors.black)),
        child: InkWell(
          onTap: onTap,
          child: Center(
              child: CustomText(
                  text: text, size: textSize, fontweight: fontweight)),
        ));
  }
}
