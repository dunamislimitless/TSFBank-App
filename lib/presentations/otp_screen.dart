import 'package:a_simple_bank_app/CustomWidget/custom_Button.dart';
import 'package:a_simple_bank_app/presentations/transfer_page.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: CustomText(
              text: 'Customer Detail', size: 24, fontweight: FontWeight.w800)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OTPTextField(
            length: 5,
            width: 240,
            fieldWidth: 40,
            otpFieldStyle: OtpFieldStyle(
              errorBorderColor: Colors.red,
              borderColor: Colors.black,
              backgroundColor: const Color.fromARGB(255, 80, 79, 79),
            ),
            style: const TextStyle(fontSize: 17, color: Colors.white),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: $pin");
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
              buttonColor: const Color.fromARGB(255, 80, 79, 79),
              width: 150,
              height: 50,
              text: 'Enter',
              textSize: 23,
              fontweight: FontWeight.w500,
              onTap: () {
                openSheet(context);
              }),
        ]),
      ),
    );
  }
}

void openSheet(context) {
  showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: ((context) {
        return SizedBox(
            height: 170,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 80, 79, 79),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Icon(
                        Icons.done,
                        color: Colors.white,
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Transfer Successful',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: 'Ok',
                    textSize: 22,
                    fontweight: FontWeight.w400,
                    buttonColor: const Color.fromARGB(255, 80, 79, 79),
                    onTap: () {
                      Navigator.of(context)
                          .popUntil((route) => route.settings.name == '/');
                    })
              ]),
            ));
      }));
}
