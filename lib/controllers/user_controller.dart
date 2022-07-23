import 'package:cubit_app/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var existUser = false.obs;
  var user = User().obs;

  void loadUser(User pUser) {
    user.value = pUser;
    existUser.value = true;
  }

  void setAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }

  void addressProfessions(String profetion) {
    user.update((val) {
      val!.professions = [...val.professions, profetion];
    });
  }

  int get professionsCount {
    return user.value.professions.length;
  }
}
