import 'package:flutter/material.dart';

class Customdesktopbottile extends StatelessWidget {
  final String botName;
  final String botUsername;
  final String botCost;
  final double? height;
  final double? width;

  const Customdesktopbottile({super.key, 
    required this.botName,
    required this.botUsername,
    required this.botCost,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400, // Slightly increased to reduce risk of overflow
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            child: Image.asset("assets/images/botIcong.png"),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                botName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF007AFF),
                    child: Image.asset(
                      "assets/images/telegramIcon.png",
                      height: height ?? 25,
                      width: width ?? 25,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible( // <-- Add this to prevent overflow
                    child: Text(
                      botUsername,
                      overflow: TextOverflow.ellipsis, // Optional: truncate if still too long
                    ),
                  ),
                ],
              ),
            ],
          ),
          subtitle: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Cost per Usage: RS.$botCost",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          tileColor: Color(0xFFB1EEBC),
        ),
      ),
    );
  }
}
