import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todoapp/app/core/utils/keys.dart';

class StorageService extends GetxService{
  late GetStorage _box;
  Future<StorageService> init() async{
    _box = GetStorage();
    //check local storage and write if null
    await _box.write(taskKey,[]);
    return this;
  }

  //generic type, change the list, string data types
 T read<T>(String key){
    return _box.read(key);
 }

 void write(String key, dynamic value) async{
    await _box.write(key, value);
 }

}