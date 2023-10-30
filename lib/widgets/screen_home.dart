import 'package:flutter/material.dart';
import 'package:hiveproject/db/functions/db_functions.dart';
import 'package:hiveproject/widgets/add_student_widget.dart';
import 'package:hiveproject/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AddStudentWidget(),
          Expanded(child: ListStudentWidget()),
        ],
      )),
    );
  }
}
