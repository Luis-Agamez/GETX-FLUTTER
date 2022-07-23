import 'package:cubit_app/screens/screen1.dart';
import 'package:cubit_app/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'screen1',
      // routes: {
      //   'screen1': (_) => const Screen1(),
      //   'screen2': (_) => const Screen2(),
      // },
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2())
      ],
    );
  }
}
