import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/bloc/tasks_event.dart';
import 'package:task_app/view/add_task_screen.dart';
import '../bloc/tasks_bloc.dart';
import '../bloc/tasks_state.dart';
import 'dart:developer';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tasks')),
      ),
      body: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          if (state is TasksLoaded) {

            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return Column(
                  children: [
                    ListTile(
                      leading:  Container(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Icon(Icons.person),
                              Text(task.employee)
                            ]),
                      ),
                      title: Text("Task: ${task.title}"),
                      subtitle: Text("${task.description}"),
                    ),
                    Divider(
                      thickness: 2,
                    )
                  ],
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddTaskScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


