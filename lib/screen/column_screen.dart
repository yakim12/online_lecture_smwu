import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column"),),
      body: Container(color: Colors.grey,
      width: 300,
        child: Column(//Column = 세로
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxis ~ = 세로

          crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxis~ = 가로
          //stretch : 가능한 교차축 사이즈를 최대한으로 크게 함
          //자식들의 width, height (100) 은 무시됨

          children: [
            //Container 3개 추가
            Container(width: 100,height: 100,color: Colors.blue,),
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
