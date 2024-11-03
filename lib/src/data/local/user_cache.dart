
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../core/app/auth_logic.dart';
import '../../../core/app/logic.dart';
import '../../../core/local_config/storage_key.dart';
import '../../model/response/user_response/user_response.dart';

class UserCache {
  Future<Box<UserResponse>> getBox() async {
    if (!Hive.isBoxOpen(StorageKey.userBox)) {
      return await Hive.openBox<UserResponse>(StorageKey.userBox);
    }
    return Hive.box<UserResponse>(StorageKey.userBox);
  }

  Future<Box<String>> getlocaleCodeBox() async {
    if (!Hive.isBoxOpen(StorageKey.localeCode)) {
      return await Hive.openBox<String>(StorageKey.localeCode);
    }
    return Hive.box<String>(StorageKey.localeCode);
  }

  Future<UserResponse?> getUser() async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return null;
    }
    UserResponse? user = await box.get(StorageKey.userData);
    Get.find<AuthLogic>().user = user;
    return user;
  }

  Future<String?> getLanguage() async {
    Box box = await getlocaleCodeBox();
    if (box.isOpen == false) {
      return null;
    }
    String? local = await box.get(StorageKey.localeCodeData);
    return local;
  }

  Future<void> setUser(UserResponse user) async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return;
    }
    box.put(StorageKey.userData, user);
    Get.find<AuthLogic>().user = user;
  }

  Future<void> setLanguage(String language) async {
    Box box = await getlocaleCodeBox();
    if (box.isOpen == false) {
      return;
    }
    box.put(StorageKey.localeCodeData, language);
  }

  Future<void> removeUser() async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return;
    }
    box.delete(StorageKey.userBox);
    Get.find<AuthLogic>().user = null;
  }

  Future<void> removeLanguage() async {
    Box box = await getlocaleCodeBox();
    if (box.isOpen == false) {
      return;
    }
    box.delete(StorageKey.localeCodeData);
  }
}
