import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'Home_page.dart';
void main(){
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "Torch App",
      home: MyTorch(),
    );
  }
}
