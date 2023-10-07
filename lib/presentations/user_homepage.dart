import 'package:a_simple_bank_app/CustomWidget/boxentry.dart';
import 'package:a_simple_bank_app/CustomWidget/card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/picture.png'),
                    ),
                    const Spacer(),
                    const Text('TSFBank',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontFamily: 'SF-Pro-Display')),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Your balance',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                '\$ 50,000,000.65',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Display'),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  CustomCardWidGet(
                      cardColor: Colors.deepPurpleAccent,
                      cardDetails: 'VISA',
                      cardDetailsColor: Colors.grey,
                      typeOfPayment: 'Salary',
                      balanceAmount: '21,000',
                      cardDigit: '˚˚690'),
                  CustomCardWidGet(
                      cardColor: Colors.blueAccent,
                      cardDetails: 'VERVE',
                      cardDetailsColor: Colors.white,
                      typeOfPayment: 'Salary',
                      balanceAmount: '27,000',
                      cardDigit: '˚˚698'),
                  CustomCardWidGet(
                      cardColor: Colors.pinkAccent,
                      cardDetailsColor: Colors.white,
                      cardDetails: 'MASTER\nCARD',
                      typeOfPayment: 'Salary',
                      balanceAmount: '39,000',
                      cardDigit: '˚˚690'),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Finance',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Display'),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const BoxEntry(
                        content: 'My Bonuses',
                        contenticon: Icons.wallet_giftcard),
                    const SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/CustomerScreen');
                      },
                      child: const BoxEntry(
                          content: 'Transfer',
                          contenticon: Icons.arrow_forward_sharp),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    const BoxEntry(
                        content: 'Wallet', contenticon: Icons.wallet),
                    const SizedBox(
                      width: 18,
                    ),
                    const BoxEntry(
                        content: 'Withdrawal',
                        contenticon: Icons.arrow_downward_sharp)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Current Pay',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Display'),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                color: const Color.fromARGB(255, 235, 209, 217),
                child: const ListTile(
                  leading: Icon(
                    Icons.wallet,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'Medical N36748923',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text('Expires 12/22/2023'),
                  trailing: Text('\$78.98 \nRate 2.5 %'),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                color: const Color.fromARGB(255, 80, 79, 79),
                child: const ListTile(
                  leading: Icon(
                    Icons.attach_money_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Transfer N45672346',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    'Expires 12/22/2023',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    '\$78.98 \nRate 2.5 %',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
