import 'package:a_simple_bank_app/CustomWidget/custom_list_widget.dart';
import 'package:a_simple_bank_app/model/functions.dart';
import 'package:a_simple_bank_app/presentations/transfer_page.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List newRow = [];
  dynamic eee;
  void addNewRow() async {
    eee = await query();
    setState(() {
      newRow = eee;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      addNewRow();
    });
    super.initState();
  }

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
        body: ListView.builder(
          itemCount: newRow.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (() {
                print('||=================tapped=========================||');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TransferPage(
                            name: newRow[index]["name"],
                            phone: newRow[index]["phone"],
                            email: newRow[index]["email"])));
              }),
              child: CustomCard(
                image: 'assets/images/picture.png',
                accountName: newRow[index]["name"],
                accountNumber: newRow[index]["phone"],
                email: newRow[index]["email"],
              ),
            );
          },
        ));
  }
}
