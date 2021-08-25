import 'package:expenses_palnner/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactions> _transactions = [
    Transactions(
      id: 't1',
      title: 'New Shoes',
      amount: 250.8,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Fruits',
      amount: 60.5,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransactions(String title, double amount) {
    final newTransaction = Transactions(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(
      () {
        _transactions.add(newTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransactions),
        TransactionsList(_transactions),
      ],
    );
  }
}
