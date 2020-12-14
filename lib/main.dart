import 'package:expense_calculator/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: <Widget>[
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
                                      '€ ${tx.amount}',
                                      style: TextStyle(
                                          color: Colors.orange[300],
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Text(
                                    //intl 0.16.1
                                    DateFormat.MMMMEEEEd().format(tx.date),
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
            ]),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Card(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 130,
                      padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                      child: TextField(
                        cursorColor: Colors.orange[300],
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          labelText: 'Item',
                          labelStyle: TextStyle(
                            color: Colors.orange[300],
                          ),
                          contentPadding: EdgeInsets.all(0),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                      child: TextField(
                        cursorColor: Colors.orange[300],
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange[300]),
                          ),
                          labelText: 'Amount',
                          labelStyle: TextStyle(
                            color: Colors.orange[300],
                          ),
                          contentPadding: EdgeInsets.all(0),
                        ),
                      ),
                    ),
                    // ignore: missing_required_param
                    ButtonTheme(
                        minWidth: 50.0,
                        height: 30.0,
                        child: OutlineButton(
                          splashColor: Colors.orange[300],
                          textColor: Colors.orange[300],
                          borderSide: BorderSide(color: Colors.orange[300]),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.orange[300],
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: Text(
                            'ADD',
                            style: TextStyle(
                              color: Colors.orange[300],
                            ),
                          ),
                        ))
                  ],
                ),
                elevation: 5,
              ),
            ),
          ],
        ));
  }
}
