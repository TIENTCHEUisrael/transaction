import 'package:flutter/material.dart';
import './transaction.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home:MyhomePage()
    );
  }
}

class MyhomePage extends StatelessWidget{
  final List<Transaction> transactions=[
    Transaction(id: 't1', title: 'CHART ::', amount: 10.0, date: DateTime.now()),
    Transaction(id: 't2', title: 'OTHER', amount: 88.8, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text(
         'First App'
       ),
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Container(
           width: double.infinity,
           child: Card(
             color: Colors.blue,
             child: Text('CHART !!'),
             elevation: 7,
           ),
         ),
         Column(
           children: transactions.map((e){
             return Card(
               child: Row(
                 children: <Widget>[
                   Text(e.amount.toString()),
                   Column(
                     children: [
                       Text(e.title),
                       Text(e.date.toString()),
                     ],
                   )
                 ],
               ),
             );
           }).toList(),
         ),
       ],
     ),
   );
  }
}