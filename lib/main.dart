import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart'; //a ete utiliser pour regler la date

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
       //mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Container(
           width: double.infinity,
           child: Card(
             color: Colors.blue,
             child: Text(
               'CHART !!',
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
             elevation: 7,
           ),
         ),//les champs de saisie
         Card(
           elevation:5,
           child:Container(
             padding: EdgeInsets.all(10),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children:<Widget>[
                 TextField(decoration:InputDecoration(labelText: 'Title'),),
                 TextField(decoration:InputDecoration(labelText: 'Amount'),),
                 FlatButton(onPressed: (){
                   print('Boutton is pressed');
                 }, child: Text('Add Transaction',style:TextStyle(color:Colors.purple),),),
               ],
             ),
           ),
         ),
         Column(
           children: transactions.map((e){
             return Card(
               child: Row(
                 children: <Widget>[
                   Container(
                     margin:EdgeInsets.symmetric(
                       vertical: 10,
                       horizontal: 20,
                     ),
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: Colors.purple,
                         width: 1,
                       ),
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     padding: EdgeInsets.all(15),
                     child: Text(
                       '\$' + e.amount.toString(),
                       style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.bold,
                         color: Colors.purple,
                       ),
                     ),
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                           e.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                       ),
                       Text(
                         DateFormat('yyyy-MMMM-dd').format(e.date),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                       ),
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