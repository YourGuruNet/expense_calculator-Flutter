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
        id: 't1', title: 'new shoes', amount: 15.35, date: DateTime.now()),
    Transcation(
        id: 't2', title: 'Dinners', amount: 12.24, date: DateTime.now()),
    Transcation(
        id: 't3', title: 'For kids', amount: 30.24, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(tx.title),
                          Text(tx.amount.toString()),
                          Text(tx.date.toString())
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]));
  }
}
