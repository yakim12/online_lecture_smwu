import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/bottom_sheet/bottom_sheet_screen.dart';
import 'package:online_lecture_smwu/screen/checkbox/checkbox_screen.dart';
import 'package:online_lecture_smwu/screen/click/click_screen.dart';
import 'package:online_lecture_smwu/screen/column_practice_screen.dart';
import 'package:online_lecture_smwu/screen/column_row_advanced_screen.dart';
import 'package:online_lecture_smwu/screen/column_screen.dart';
import 'package:online_lecture_smwu/screen/commerce/navigation/navigation_screen.dart';
import 'package:online_lecture_smwu/screen/container_practice_screen.dart';
import 'package:online_lecture_smwu/screen/container_screen.dart';
import 'package:online_lecture_smwu/screen/dialog/dialog_screen.dart';
import 'package:online_lecture_smwu/screen/image/image_screen.dart';
import 'package:online_lecture_smwu/screen/listview/listview_practice_screen.dart';
import 'package:online_lecture_smwu/screen/network/network_screen.dart';
import 'package:online_lecture_smwu/screen/pageview/page_view_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_practice_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_screen.dart';
import 'package:online_lecture_smwu/screen/stack/stack_practice_screen.dart';
import 'package:online_lecture_smwu/screen/stack/stack_screen.dart';
import 'package:online_lecture_smwu/screen/state_management/state_management_screen.dart';
import 'package:online_lecture_smwu/screen/stateful/stateful_screen.dart';
import 'package:online_lecture_smwu/screen/stateless/stateless_screen.dart';
import 'package:online_lecture_smwu/screen/tabbar/tab_bar_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_practice_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_screen.dart';
import 'package:online_lecture_smwu/screen/todo/todo_screen.dart';
import 'package:online_lecture_smwu/screen/ui_exam.dart';

import 'default_tab_controller/default_tab_controller_screen.dart';
import 'listview/listview_builder_screen.dart';
import 'listview/listview_screen.dart';
import 'text_form_field/text_form_field_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 화면에 기초가 되는 위젯
    // Column 세로로 위젯을 나열하는 위젯
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // 화면 이동 Navigator
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const NavigationScreen();
                      },
                    ));
                  },
                  child: const Text("Commerce")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    // 화면 이동 Navigator
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ContainerScreen();
                      },
                    ));
                  },
                  child: const Text("Container")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ContainerPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("Container 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ColumnScreen();
                      },
                    ));
                  },
                  child: const Text("Column")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ColumnPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("Column 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const RowScreen();
                      },
                    ));
                  },
                  child: const Text("Row")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const RowPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("Row 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ColumnRowAdvancedScreen();
                      },
                    ));
                  },
                  child: const Text("Column, Row 심화")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TextScreen();
                      },
                    ));
                  },
                  child: const Text("Text")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TextPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("Text 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ImageScreen();
                      },
                    ));
                  },
                  child: const Text("Image")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StackScreen();
                      },
                    ));
                  },
                  child: const Text("Stack")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StackPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("Stack 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ListviewScreen();
                      },
                    ));
                  },
                  child: const Text("Listview")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ListviewBuilderScreen();
                      },
                    ));
                  },
                  child: const Text("ListView Builder")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ListviewPracticeScreen();
                      },
                    ));
                  },
                  child: const Text("ListView 실습")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StatelessScreen();
                      },
                    ));
                  },
                  child: const Text("Stateless")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StatefulScreen();
                      },
                    ));
                  },
                  child: const Text("Stateful")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ClickScreen();
                      },
                    ));
                  },
                  child: const Text("Click")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const CheckboxScreen();
                      },
                    ));
                  },
                  child: const Text("Checkbox")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TextFormFieldScreen();
                      },
                    ));
                  },
                  child: const Text("TextFormField")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TodoScreen();
                      },
                    ));
                  },
                  child: const Text("Todo")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const NetworkScreen();
                      },
                    ));
                  },
                  child: const Text("Network")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const PageViewScreen();
                      },
                    ));
                  },
                  child: const Text("PageView")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TabBarScreen();
                      },
                    ));
                  },
                  child: const Text("TabBar")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const DefaultTabControllerScreen();
                      },
                    ));
                  },
                  child: const Text("DefaultTabController")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const DialogScreen();
                      },
                    ));
                  },
                  child: const Text("Dialog")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const BottomSheetScreen();
                      },
                    ));
                  },
                  child: const Text("BottomSheet")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const StateManagementScreen();
                      },
                    ));
                  },
                  child: const Text("StateManagement")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const UiExam();
                      },
                    ));
                  },
                  child: const Text("UiExam")),
            ],
          ),
        ),
      ),
    );
  }
}