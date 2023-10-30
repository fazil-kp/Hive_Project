import 'package:flutter/material.dart';
import 'package:hiveproject/db/functions/db_functions.dart';
import 'package:hiveproject/db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
          return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = studentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
                trailing: IconButton(
                  color: Colors.red,
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    if (data.id != null) {
                      deleteStudent(data.id!);
                    } else {
                      print("student id is null. Unable to delete");
                    }
                  },
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: studentList.length,
          );
        });
  }
}
