import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {super.key,
      required this.image,
      required this.accountName,
      required this.accountNumber});
  dynamic image;
  String accountName;
  String accountNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 8,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        color: const Color.fromARGB(255, 80, 79, 79),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          title: Text(
            accountName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            accountNumber,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_sharp,
            color: Colors.white,
          ),
        ));
  }
}
