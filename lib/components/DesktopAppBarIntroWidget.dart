import 'package:flutter/material.dart';
class Desktopappbarintrowidget extends StatelessWidget {
  const Desktopappbarintrowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.grey,
      ),
      child: Text("Hi,PakAM User",style: TextStyle(fontSize: 20),),
    );
  }
}
