import 'package:google_fonts/google_fonts.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import '';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  final Function _deleteTransaction;
  TransactionList(this.userTransactions, this._deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: userTransactions.isEmpty
          ? Container(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Type your spends..',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.architectsDaughter(
                        textStyle: TextStyle(
                          color: Colors.orange[300],
                          letterSpacing: 2.5,
                          fontSize: 22,
                        ),
                      )),
                ],
              ),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 140,
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              userTransactions[index].title,
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
                                    '€ ${userTransactions[index].amount.toStringAsFixed(2)}',
                                    style: TextStyle(
                                        color: Colors.orange[300],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Text(
                                  //intl 0.16.1
                                  DateFormat.MMMMEEEEd()
                                      .format(userTransactions[index].date),
                                  style: TextStyle(
                                      color: Colors.orange[300],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.deepOrange,
                            iconSize: 25,
                            onPressed: () =>
                                _deleteTransaction(userTransactions[index].id),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: userTransactions.length),
    );
  }
}
