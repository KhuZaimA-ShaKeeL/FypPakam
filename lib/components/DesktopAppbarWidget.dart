import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyppakam/components/pakamText.dart';
class Desktopappbarwidget extends StatelessWidget {
  const Desktopappbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top:30),
      //           padding: EdgeInsets.symmetric(horizontal: 16,),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey, // Border color
          width: 1, // Border width
        ),
      ),
      child: Container(
        //  margin: Ed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              children: [
                IconButton(
                  onPressed: () {
                    //Get.offAll(() => Mobilehome());
                  },
                  icon: Icon(CupertinoIcons.home), // Home icon
                ),
                SizedBox(width: 10,),
                Center(
                  child:
                  pakAmText(fontSize: 30, letterspacing: 5,fontWeight: FontWeight.bold,), // Title
                ),
                SizedBox(width: 10,),
                Text("Affiliate",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.w500),)

              ],
            ),
            Row(
              children: [
                Text("Our Products",style: TextStyle(fontSize: 15  ,color: Colors.green),),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.moon_fill)),
                SizedBox(width: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
