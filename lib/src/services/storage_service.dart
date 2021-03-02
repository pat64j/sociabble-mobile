import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StoreSecure{
  final _storage = FlutterSecureStorage();

  Future<bool> writeSecureData(String key, String value) async{
    try{
      await _storage.write(key: key, value: value);
      return true;
    }catch(e){
      print(e.toString());
      return false;
    }
  }

  Future<bool> dataExists(String key) async{
    bool available = false;
    try{
      available = await _storage.containsKey(key: key);
    }catch(e){
      print(e.toString());
      available = false;
    }
    return available;
  }

  Future<String> readSecureData(String key) async{
    try{
      return await _storage.read(key: key);
    }catch(e){
      print(e.toString());
      return "";
    }

  }

  Future<bool> deleteSecureData(String key) async{
    try{
      await _storage.delete(key: key);
      return true;
    }catch(e){
      print(e.toString());
      return false;
    }
  }

  Future<bool> deleteAllSecureData() async{
    try{
      await _storage.deleteAll();
      return true;
    }catch(e){
      print(e.toString());
      return false;
    }
  }
}