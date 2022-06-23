import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleControlleur=TextEditingController();
  final amoutControlleur=TextEditingController();

  NewTransaction(this.addTx);

  void submitedData(){
    final entreTitle=titleControlleur.text;
    final entreAmount=double.parse(amoutControlleur.text);
    if(entreTitle.isEmpty || entreAmount<=0){
      return;
    }
    print('Button is pressed................................!');
    addTx(
        entreTitle,
        entreAmount,
    );
  }

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
              onSubmitted: (_)=>submitedData(),
              /*onChanged: (val){
                     titleInput=val;
                   },*/
            ),
            TextField(
              decoration:InputDecoration(
                  labelText: 'Amount'
              ),
              controller: amoutControlleur,
              keyboardType:TextInputType.number,
              onSubmitted: (_)=> submitedData(),
              /*onChanged: (val){
                     amoutInput=val;
                   },*/
            ),
            FlatButton(
              onPressed: submitedData,
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
