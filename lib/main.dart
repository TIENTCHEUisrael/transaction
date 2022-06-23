import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

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
  //late String titleInput;
  //late String amoutInput;


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text(
         'First App'
       ),
     ),
     body:SingleChildScrollView(
        child:Column(
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
           ),
           UserTransaction(),
         ],
        ),
      ),
    );
  }
}