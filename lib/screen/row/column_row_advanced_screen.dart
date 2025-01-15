


import 'package:flutter/material.dart';

class ColumnRowAdvancedScreen extends StatelessWidget {
  const ColumnRowAdvancedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column, Row 심화"),),
      body: Container(
        color: Colors.grey,
        height: 500,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 100, color: Colors.blue,),
                SizedBox(height: 10,),
                Container(width: 100, height: 100, color: Colors.red,),
                SizedBox(height: 10,),
                Container(width: 100, height: 100, color: Colors.green,),
                SizedBox(height: 10,),

            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 100, height: 100, color: Colors.blue,),
                SizedBox(height: 10,),
                Container(width: 100, height: 100, color: Colors.red,),
                SizedBox(height: 10,),
                Container(width: 100, height: 100, color: Colors.green,),
                SizedBox(height: 10,),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    Container(width: 40, height: 40, color: Colors.green,),
                    Container(width: 40, height: 40, color: Colors.green,)
                  ],
                  
                ),
                Column(
                  children: <Widget>[
                    Container(width: 40, height: 40, color: Colors.green,),
                    Container(width: 40, height: 40, color: Colors.green,)
                  ],
                  
                )
              ],
              
            )
          ],
        ),
        

      ),
    )
  }
}