import 'dart:convert';
import 'package:get/get.dart';
import 'package:todoapp/app/core/utils/keys.dart';
import 'package:todoapp/app/data/services/storage/services.dart';
import '../../task.dart';

//to db connect (behalf connect local storage)
class TaskProvider{
  final StorageService _storage = Get.find<StorageService>();

  //read task return like this
  // {'tasks':[
  // {'title':'work',
  // 'color':'#ff34g5',
  // 'icon':0x123
  // }
  // ]}

  //read task from local storage
  List<Task> readTasks(){
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
    .forEach((e)=> tasks.add(Task.formJson(e)));
    return tasks;
  }

  //write task
  void writeTasks(List<Task> tasks){
    _storage.write(taskKey, jsonEncode(tasks));
  }
  
}