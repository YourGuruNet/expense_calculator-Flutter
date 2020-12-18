import 'package:expense_calculator/models/transaction.dart';
import 'package:expense_calculator/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
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
  void _addNewTransaction(
      String newTitle, double newAmount, DateTime _selectedDate) {
    final newTransaction = Transaction(
        title: newTitle,
        amount: newAmount,
        date: _selectedDate,
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  List<Transaction> get _recentTransactions {
    return _userTransactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _deleteTransaction(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chart(_recentTransactions),
        TransactionList(_userTransactions, _deleteTransaction),
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
