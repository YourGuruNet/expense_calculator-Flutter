import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;

  // String itemInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  void _submitDate() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    //Stop if empty
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addNewTransaction(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    void _showDatePicker() {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2020),
          lastDate: DateTime.now());
    }

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160,
                  padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                  child: TextField(
                    onSubmitted: (_) => _submitDate,
                    style: new TextStyle(color: Colors.orange[300]),
                    controller: titleController,
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
                  width: 160,
                  padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => _submitDate(),
                    style: new TextStyle(color: Colors.orange[300]),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'No Date Chosen',
                    style: TextStyle(
                      color: Colors.orange[300],
                    ),
                  ),
                  FlatButton(
                      onPressed: _showDatePicker,
                      splashColor: Colors.orange[300],
                      child: Text(
                        'Choose Date',
                        style: TextStyle(
                            color: Colors.orange[300],
                            fontWeight: FontWeight.w900),
                      )),
                  ButtonTheme(
                      minWidth: 70.0,
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
                        onPressed: _submitDate,
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.orange[300],
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        elevation: 5,
      ),
    );
  }
}
