import 'package:task_app/model/Task.dart';

class TasksState {}

class TasksLoaded extends TasksState {
  final List<Task> tasks;

   TasksLoaded(this.tasks);

  @override
  List<Object> get props => [tasks];
}
