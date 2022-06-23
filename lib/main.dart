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
       actions:<Widget>[
         IconButton(
           icon:Icon(Icons.add),
           onPressed: (){
             print('Pressed Button......................;;');
           },
         )
       ]
     ),
     body:SingleChildScrollView(
        child:Column(
       //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Container(
             width: double.infinity,
             child:  const Card(
               color: Colors.blue,
               elevation: 7,
               child: Text(
                 'CHART !!',
                   style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             ),
           ),
           UserTransaction(),
         ],
        ),
      ),
     floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed:(){
         print('Button pressed...................');
       },
     ),
    );
  }
}