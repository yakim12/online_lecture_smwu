import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPracticeScreen extends StatelessWidget {
  const ContainerPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Container 실습"),),
        body: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 5, color: Colors.blue),
            ),
            //alignment 자식 위젯 가운데로 배치
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(10),
                width: 100, height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              //margin 해당 위젯 바깥의 여백 추가
            )
        )
    );
  }
}
