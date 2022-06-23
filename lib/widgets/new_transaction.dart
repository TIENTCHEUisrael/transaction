import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleControlleur=TextEditingController();
  final amoutControlleur=TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:3,
      child:Container(
        padding: EdgeInsets.all(10),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:<Widget>[
            TextField(
              decoration:InputDecoration(
                  labelText: 'Title'
              ),
              controller: titleControlleur,
              /*onChanged: (val){
                     titleInput=val;
                   },*/
            ),
            TextField(
              decoration:InputDecoration(
                  labelText: 'Amount'
              ),
              controller: amoutControlleur,
              /*onChanged: (val){
                     amoutInput=val;
                   },*/
            ),
            FlatButton(
              onPressed: (){
                print('Boutton is pressed..............................................');
                print(titleControlleur);
                print(amoutControlleur);
                print('Function is started.............................................');
                addTx(titleControlleur.text, double.parse(amoutControlleur.text));
                print('Function is finish.............................................');

              },
              child: Text(
                'Add Transaction',
                style:TextStyle(
                    color:Colors.purple
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
