import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  @override
  final String day;
  final double amount;
  final double spendingProcentages;

  ChartBar(
    this.day,
    this.amount,
    this.spendingProcentages,
  );
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            child: FittedBox(
              child: Text(
                '\$ ${amount.toStringAsFixed(0)} ',
                style: TextStyle(
                  color: Colors.orange[300],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange[300],
                      width: 1,
                    ),
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingProcentages,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            day,
            style: TextStyle(
              color: Colors.orange[300],
            ),
          ),
        ],
      ),
    );
  }
}
