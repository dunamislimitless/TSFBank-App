import 'package:a_simple_bank_app/model/functions.dart';
import 'package:a_simple_bank_app/presentations/transfer_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  const ProfilePage({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: CustomText(
              text: 'Customer Detail', size: 24, fontweight: FontWeight.w800)),
      body: Column(children: [
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
          height: 20,
        ),
        SizedBox(
          height: 200,
          width: 400,
          child: Card(
            color: const Color.fromARGB(255, 80, 79, 79),
            elevation: 30,
            shadowColor: Colors.grey,
            margin: const EdgeInsets.all(8),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                            text: 'Name:',
                            size: 15,
                            fontweight: FontWeight.w400),
                        const Spacer(),
                        CustomText(
                            text: name, size: 15, fontweight: FontWeight.w300),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                            text: 'Email:',
                            size: 15,
                            fontweight: FontWeight.w400),
                        const Spacer(),
                        CustomText(
                            text: email, size: 15, fontweight: FontWeight.w300),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                            text: 'Bank:',
                            size: 15,
                            fontweight: FontWeight.w400),
                        const Spacer(),
                        CustomText(
                            text: 'TSF Bank',
                            size: 15,
                            fontweight: FontWeight.w300),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                            text: 'Account Number:',
                            size: 15,
                            fontweight: FontWeight.w400),
                        const Spacer(),
                        CustomText(
                            text: phone, size: 15, fontweight: FontWeight.w300),
                      ],
                    ),
                    const Spacer(),
                  ]),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/otpPage');
        },
        backgroundColor: const Color.fromARGB(255, 80, 79, 79),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
