import 'package:flutter/material.dart';
class DesktopandWebappbarintrowidget extends StatelessWidget {
  const DesktopandWebappbarintrowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
height: MediaQuery.of(context).size.height*0.08,
      padding: EdgeInsets.symmetric(horizontal: 16,),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.grey,
      ),
      child: Text("Hi,PakAM User",style: TextStyle(fontSize: 20),),
    );
  }
}
