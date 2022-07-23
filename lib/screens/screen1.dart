import 'package:cubit_app/controllers/user_controller.dart';
import 'package:cubit_app/models/user.dart';
import 'package:cubit_app/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.put(UserController());
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Screen1')),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () =>
              //  Get.to(Screen2())
              Get.toNamed('screen2', arguments: {'name': 'Luis', 'age': 23}),
        ),
        body: Obx(() => userCtrl.existUser.value
            ? InformationUser(user: userCtrl.user.value)
            : NoInfo()));
  }
}

class NoInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Not available data '),
      ),
    );
  }
}

class InformationUser extends StatelessWidget {
  final User user;

  const InformationUser({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Name : ${user.name}')),
          ListTile(title: Text('Age : ${user.age}')),
          const Text('Profetions : ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          // const ListTile(title: Text('Profetion 1')),
          ...user.professions
              .map((profetion) => ListTile(title: Text(profetion)))
              .toList()
        ],
      ),
    );
  }
}
