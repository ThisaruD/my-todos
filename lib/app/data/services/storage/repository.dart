import 'package:todoapp/app/data/models/providers/task/provider.dart';
import 'package:todoapp/app/data/models/task.dart';

//repository for access the provider
class TaskRepository{
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}