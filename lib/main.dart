import 'package:expense_calculator/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weekly Expenses Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
            title: Container(
              width: double.infinity,
              child: Text("Weekly Expenses Calculator",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.architectsDaughter(
                    textStyle: TextStyle(
                      color: Colors.orange[300],
                      letterSpacing: 2.5,
                    ),
                  )),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              UserTransactions(),
            ]),
      ),
    );
  }
}
