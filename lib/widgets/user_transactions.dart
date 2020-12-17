import 'package:expense_calculator/models/transaction.dart';
import 'package:expense_calculator/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    //  Transaction(
    //     id: 't1', title: 'New shoes', amount: 15.35, date: DateTime.now()),
    //   Transaction(
    //      id: 't2', title: 'Dinners', amount: 12.24, date: DateTime.now()),
    //  Transaction(
    //      id: 't3', title: 'For kids', amount: 30.24, date: DateTime.now()),
    //  Transaction(
    //      id: 't3', title: 'For kids', amount: 30.24, date: DateTime.now()),
  ];
  void _addNewTransaction(String newTitle, double newAmount) {
    final newTransaction = Transaction(
        title: newTitle,
        amount: newAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_userTransactions),
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
