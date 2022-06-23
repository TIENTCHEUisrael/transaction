import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransactions=[
    Transaction(id: 't1', title: 'CHART ::', amount: 10.0, date: DateTime.now()),
    Transaction(id: 't2', title: 'OTHER', amount: 88.8, date: DateTime.now()),
  ];

  void _addTransaction(String txtTitle, double txtAmount){

    final newtx=Transaction(
        id: DateTime.now().toString(),
        title: txtTitle,
        amount: txtAmount,
        date: DateTime.now()
    );

    setState(
        (){
          _usertransactions.add(newtx);
        }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        NewTransaction(_addTransaction),
        TransactionList(_usertransactions),
      ],
    );
  }
}
