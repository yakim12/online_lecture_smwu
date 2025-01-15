import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatelessWidget {
  const ColumnPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column 실습"),),
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min, //세로(column의 main) 사이즈가 자식위젯의 사이즈만큼
          children: [
            Container(width: 100,height: 100,color: Colors.blue,),
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.green,),
          ]
        ),
      ),
    );
  }
}
