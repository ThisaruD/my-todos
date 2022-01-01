import 'package:get/get.dart';
import 'package:todoapp/app/data/models/providers/task/provider.dart';
import 'package:todoapp/app/data/services/storage/repository.dart';
import 'package:todoapp/app/modules/home/controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(
      taskProvider: TaskProvider(),
    ),
    ));
  }


}
