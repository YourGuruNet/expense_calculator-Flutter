import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String itemInput;
  // String amountInput;
  final itemController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                //   onChanged: (value) => itemInput = value,
                controller: itemController,
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
                //  onChanged: (value) => amountInput = value,
                controller: amountController,
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
    );
  }
}
