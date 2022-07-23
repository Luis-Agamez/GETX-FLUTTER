import 'package:cubit_app/controllers/user_controller.dart';
import 'package:cubit_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();

    // print(Get.arguments);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              userCtrl.loadUser(User(name: 'Luis', age: 22));
              Get.snackbar('User Insert', 'New User',
                  backgroundColor: Colors.white,
                  boxShadows: const [
                    BoxShadow(color: Colors.black38, blurRadius: 10)
                  ]);
            },
            child:
                const Text('Set User', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child:
                const Text('Set Theme', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userCtrl.setAge(25);
            },
            child: const Text('Set Age', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              // userCtrl.addressProfessions(
              //     'Profetion Num : ${userCtrl.user.value.professions.length}');
              userCtrl.addressProfessions(
                  'Profetion Num : ${userCtrl.professionsCount}');
            },
            child: const Text('Add Profession',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          )
        ],
      )),
    );
  }
}
