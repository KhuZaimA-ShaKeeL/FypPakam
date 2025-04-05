import 'package:flutter/material.dart';

class customListTile extends StatelessWidget {
  String botName;
  String botUsername;
  String botCost;
  double? height;
  double? width;

  customListTile(
      {super.key,
      required this.botName,
      required this.botCost,
      required this.botUsername,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      leading: CircleAvatar(
        child: Image.asset("assets/images/botIcong.png"),
        backgroundColor: Colors.transparent,
        radius: 30,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            botName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF007AFF),
                child: Image.asset(
                  "assets/images/telegramIcon.png",
                  height:height?? 25,
                  width: width??25,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(botUsername),
            ],
          )
        ],
      ),
      subtitle: Text(
        "Cost per Usage:  RS.$botCost",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      tileColor: Color(0xFFB1EEBC),
    );
  }
}
