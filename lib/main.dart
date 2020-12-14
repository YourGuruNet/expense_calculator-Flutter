import 'package:expense_calculator/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Expenses Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transcation> transcation = [
    Transcation(
        id: 't1', title: 'New shoes', amount: 15.35, date: DateTime.now()),
    Transcation(
        id: 't2', title: 'Dinners', amount: 12.24, date: DateTime.now()),
    Transcation(
        id: 't3', title: 'For kids', amount: 30.24, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: PreferredSize(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ],
            ),
            child: AppBar(
              backgroundColor: Colors.black,
              elevation: 0.0,
              title: Text(
                "Weekly Expenses Calculator",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[300],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('Chart'),
                  elevation: 5,
                ),
              ),
              Column(
                children: transcation.map((tx) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Card(
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(left: 15, right: 20),
                              child: Text(
                                tx.title,
                                style: TextStyle(
                                    color: Colors.orange[300],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      '\€ ' + tx.amount.toString(),
                                      style: TextStyle(
                                          color: Colors.orange[300],
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Text(
                                    tx.date.day.toString() +
                                        "." +
                                        tx.date.month.toString() +
                                        "." +
                                        tx.date.year.toString(),
                                    style: TextStyle(
                                        color: Colors.orange[300],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]));
  }
}
