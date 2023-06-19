import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';


class MyTorch extends StatefulWidget {
  const MyTorch({Key? key}) : super(key: key);

  @override
  State<MyTorch> createState() => _MyTorchState();
}

class _MyTorchState extends State<MyTorch> {


  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
   var isActive = false;
   var  controller = TorchController();



   return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Torch App",style:
        TextStyle(color: Colors.white70,
          fontWeight: FontWeight.w500,
            fontSize: 22
        )),
         centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Image.asset(isActive ? 'assets/images/torchoff.png' : 'assets/images/torchon.png',
                     width: 200,
                     // color: isActive? null : Colors.yellow,
                    ),
                  ),
                 SizedBox(
                   height: size.height * 0.1,
                 ),
                    CircleAvatar(
                        minRadius: 40,
                        maxRadius: 45,
                        child:
                        IconButton(
                          mouseCursor: MouseCursor.defer,
                          onPressed: (){
                             isActive = !isActive;
                             controller.toggle();
                             setState(() {});
                            }
                          ,icon : Icon(Icons.power_settings_new),

                        )
                    ),
                ],
              ),
            ),
          )),
          Text("Developed By Rohit Kumar Sahu",
          style: TextStyle(fontSize: 16,
          color: Colors.white,
            ),
          ),
         SizedBox(
           height: size.height*0.05,
         )
        ],
      ),
    );
  }
}
