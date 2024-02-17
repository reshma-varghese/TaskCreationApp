import 'package:task_app/model/Task.dart';

class TasksEvent {}

class AddTask extends TasksEvent {
  final Task task;

   AddTask(this.task);

  @override
  List<Object> get props => [task];
}

