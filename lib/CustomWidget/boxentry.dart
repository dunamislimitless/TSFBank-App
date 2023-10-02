import 'package:flutter/material.dart';

class BoxEntry extends StatelessWidget {
  const BoxEntry({super.key, required this.content, required this.contenticon});
  final String content;
  final IconData contenticon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black45,
            border: Border.all(
              color: Colors.grey,
            )),
        child: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12, top: 25, bottom: 25),
            child: Column(
              children: [
                Icon(
                  contenticon,
                  color: Colors.white,
                  size: 30,
                ),
                const Spacer(),
                Text(
                  content,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      fontFamily: 'SF-Pro-Display'),
                )
              ],
            )),
      ),
    );
  }
}
