
import 'package:flutter/material.dart';

class ChecboxScreen extends StatefulWidget {
  const ChecboxScreen({super.key});

  @override
  State<ChecboxScreen> createState() => _ChecboxScreenState();
}

class _ChecboxScreenState extends State<ChecboxScreen> {

  bool checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox"),),
      body: Column(
        children: [
          Checkbox(
            value: checked,
            onChanged: (value){
              print('value : $value');
              //nullable 변수에 ! 추가하면 null이 아닌게 확실
              checked=value!;
              setState(() {});
            },
          ),

          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: (){
              checked = !checked;
              setState(() {});
            },
            child: Image.asset(
              checked ? "assets/checked_box.png" : "assets/unchecked_box.png",
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}