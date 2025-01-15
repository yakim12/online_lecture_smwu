import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/container_practice_screen.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"),),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.grey,
        //padding 해당 위젯 안쪽 여백 추가
        padding: EdgeInsets.all(10),
        alignment: Alignment.bottomRight,
        child: Container(
          width: 100,
          height: 100,
          //margin 해당 위젯 바깥의 여백 추가
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 3, color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );

  }
}
