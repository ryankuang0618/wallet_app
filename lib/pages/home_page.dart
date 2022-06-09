// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/my_button.dart';
import 'package:wallet_app/util/my_card.dart';
import 'package:wallet_app/util/my_list_tile.dart';
import 'package:wallet_app/util/balance_categories.dart';
import 'package:wallet_app/util/piechart_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, size: 32, color: Colors.pink)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, size: 32, color: Colors.grey)),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Acount',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(193, 214, 233, 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Balance:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$1280.20',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: BalanceCategories(),
                            ),
                            Expanded(
                              flex: 4,
                              child: PieChartView(),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 25),
            //cards
            // Container(
            //   height: 200,
            //   child: PageView(
            //     scrollDirection: Axis.horizontal,
            //     controller: _controller,
            //     children: [
            //       MyCard(
            //         balance: 5250.25,
            //         cardNumber: 123456,
            //         expiryMonth: 11,
            //         expiryYear: 23,
            //         color: Colors.deepPurple[400],
            //       ),
            //       MyCard(
            //         balance: 123.75,
            //         cardNumber: 789465,
            //         expiryMonth: 10,
            //         expiryYear: 24,
            //         color: Colors.blue[400],
            //       ),
            //       MyCard(
            //         balance: 789.53,
            //         cardNumber: 456191,
            //         expiryMonth: 6,
            //         expiryYear: 19,
            //         color: Colors.green[400],
            //       ),
            //     ],
            //   ),
            // ),

            // SizedBox(height: 25),

            // SmoothPageIndicator(
            //   controller: _controller,
            //   count: 3,
            //   effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            // ),
            SizedBox(height: 25),
            //3buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send
                  MyButton(
                      buttonText: 'Send',
                      icomImagePath: 'lib/icons/send-money.png'),
                  //pay
                  MyButton(
                      buttonText: 'Pay',
                      icomImagePath: 'lib/icons/credit-card.png'),
                  //bills
                  MyButton(
                      buttonText: 'Recieve',
                      icomImagePath: 'lib/icons/receiver.png'),
                ],
              ),
            ),
            SizedBox(height: 25),

            Container(
              child: Text(
                'Assets ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            //column
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTilie(
                      iconImagePath: 'lib/icons/stats.png',
                      tileName: 'Statistics',
                      tileSubTitle: 'Payment and Income'),

                  //transaction
                  MyListTilie(
                      iconImagePath: 'lib/icons/transaction.png',
                      tileName: 'Transactions',
                      tileSubTitle: 'Transaction History'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
