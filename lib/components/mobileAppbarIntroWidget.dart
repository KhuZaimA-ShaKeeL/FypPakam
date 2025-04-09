import 'package:flutter/material.dart';
class Mobileappbarintrowidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
   const Mobileappbarintrowidget({super.key,required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,

      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Open the drawer using the GlobalKey
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, size: 25), // Larger menu icon
          ),
          SizedBox(width: 5), // Add spacing between icon and text
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Light grey background
                borderRadius:
                BorderRadius.circular(10), // Rounded corners
              ),
              child: Center(
                child: Text(
                  "Hi, PakAM User",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
