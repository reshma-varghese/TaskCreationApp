import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/bloc/tasks_event.dart';
import 'package:task_app/bloc/tasks_state.dart';
import 'package:task_app/model/Task.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {

  TasksBloc() : super( TasksLoaded([])) {
    List<Task> _tasks = <Task>[];

    on<AddTask>((event, emit){
      _tasks.add(event.task);
      emit(TasksLoaded(_tasks));
    });

  }
}




