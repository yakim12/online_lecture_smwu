
import 'package:flutter/material.dart';

class ClickScreen extends StatefulWidget {
  const ClickScreen({super.key});

  @override
  State<ClickScreen> createState() => _ClickScreenState();
}

class _ClickScreenState extends State<ClickScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click"),
      ),
      body: Column(
        children: [
          Text(
            value.toString(),
            style: TextStyle(fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              value++;
              setState(() {});
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
          ),

          InkWell(
            onTap: (){
              value++;
              setState(() {

              });
            },
            customBorder: CircleBorder(), //클릭하는게 원 형태로 변환
            child: SizedBox(width: 100,
              height: 100,
              child: Center(child: Text("InkWEll")),
            ),
          ),
          TextButton(onPressed: (){
            value++;
            setState(() { });
          },
            style: TextButton.styleFrom(

              //글자색 , 클릭 효과색 변경
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                fixedSize: Size(150, 50),
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 3,
                      color: Colors.red,
                    )
                )
            ),
            child: Text("TextButton"),),

          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}