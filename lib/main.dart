import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'API/learing_http/api_with_futurebuilder.dart';

void main() {
  runApp(const MyApp());
}
//root widget of the app
//the root we may put other name but we most extends from stateless or stateful
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:const ApiFutureBuilder()
    );
  }
}
