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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  height: 220,
                  width: 165,
                  child: Card(
                    color: Colors.deepPurpleAccent,
                    elevation: 30,
                    shadowColor: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'VISA',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'SF-Pro-Display'),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text('Salary',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                          Text(
                            '\$ 15,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SF-Pro-Display'),
                          ),
                          Text('˚˚688',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  width: 165,
                  child: Card(
                    color: Colors.blueAccent,
                    elevation: 30,
                    shadowColor: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'VERVE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'SF-Pro-Display'),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text('Salary',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                          Text(
                            '\$ 27,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SF-Pro-Display'),
                          ),
                          Text('˚˚690',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  width: 165,
                  child: Card(
                    color: Colors.pinkAccent,
                    elevation: 30,
                    shadowColor: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'MASTER\nCARD',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'SF-Pro-Display'),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text('Salary',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                          Text(
                            '\$ 25,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SF-Pro-Display'),
                          ),
                          Text('˚˚698',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
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
                  const BoxEntry(content: 'Wallet', contenticon: Icons.wallet),
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
            Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 214, 195, 201),
              ),
            ),
            const SizedBox(height: 10),
            Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey))),
          ])),
    );
  }
}

class BoxEntry extends StatelessWidget {
  const BoxEntry({super.key, required this.content, required this.contenticon});
  final String content;
  final IconData contenticon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 135,
          width: 135,
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
                    size: 55,
                  ),
                  const Spacer(),
                  Text(
                    content,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Display'),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
