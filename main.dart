import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/MainPAge.dart';

import 'package:flutter_application_1/stateManagement/product_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(List<String> args) {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
    initialBinding: AllBing(),
  ));
}
class AllBing extends Bindings{
  @override
  void dependencies() {
    Get.put(ProductController());
  }
  
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
int _current=0;
  @override
  Widget build(BuildContext context) {
    return  MyApp();
  }
}
