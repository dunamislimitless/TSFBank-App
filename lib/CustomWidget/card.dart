// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomCardWidGet extends StatelessWidget {
  CustomCardWidGet(
      {super.key,
      required this.cardColor,
      required this.cardDetails,
      required this.typeOfPayment,
      required this.balanceAmount,
      required this.cardDigit,
      required this.cardDetailsColor,
      this.size});

  final Color cardColor;
  final String cardDetails;
  final String typeOfPayment;
  final String balanceAmount;
  final String cardDigit;
  final Color cardDetailsColor;
  double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 220,
      width: size ?? 165,
      child: Card(
        color: cardColor,
        elevation: 30,
        shadowColor: Colors.lightBlueAccent,
        margin: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    cardDetails,
                    style: TextStyle(
                        color: cardDetailsColor,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'SF-Pro-Display'),
                  ),
                ],
              ),
              const Spacer(),
              Text(typeOfPayment,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500)),
              Text(
                balanceAmount,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Display'),
              ),
              Text(cardDigit,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
