import 'package:flutter/material.dart';

import '../../components/CustomDrawerMobile.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';

class profileMobile extends StatelessWidget {
  profileMobile({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldKey,
        drawer: customDrawerMobile(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mobileappbarwidget(),
                SizedBox(height: 5),
                Mobileappbarintrowidget(scaffoldKey: scaffoldKey),

                // User Info Card
                ListTile(
                  tileColor: Color(0xFFF5F5F5),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(width: 1),
                  ),
                  title: Text("M. Abu Bakar Ghumman"),
                  subtitle: Text(
                    "ghummanabubakar7@gmail.com",
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/profileImage.png"),
                  ),
                  trailing: Icon(Icons.edit, size: 20),
                ),

                SizedBox(height: 10),

                // Tab Bar
                TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "About"),
                    Tab(text: "Bio Data"),
                    Tab(text: "Affiliator Info"),
                  ],
                ),

                // Tab Content
                SizedBox(
                  height: 400, // You can adjust height as needed
                  child: TabBarView(
                    children: [
                      // ABOUT TAB
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Information',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 20),

                            _personalDetailRow(Icons.email_outlined, 'ghummanabubakar7@gmail.com', 'Email'),
                            _personalDetailRow(Icons.phone, '0346-2695242', 'Phone'),
                          ],
                        ),
                      ),

                      // BIO DATA TAB
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Personal Detail',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              SizedBox(height: 20),
                          
                              _personalDetailRow(Icons.calendar_today_outlined, '2004-05-08', 'Date of Birth'),
                              _personalDetailRow(Icons.male, 'Male', 'Gender'),
                              _personalDetailRow(Icons.flag, 'Pakistan', 'Country'),
                              _personalDetailRow(Icons.location_city, 'Lahore', 'City'),
                              _personalDetailRow(Icons.credit_card, '31104-9329759-5', 'CNIC'),
                            ],
                          ),
                        ),
                      ),

                      // AFFILIATOR TAB
                      Center(child: Text("Affiliator Info")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable row widget for details
  Widget _personalDetailRow(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16)),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Divider(thickness: 2,color: Colors.black,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
