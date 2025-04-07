import 'package:flutter/material.dart';

import '../../components/DekstopSidebar.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
class Desktopprofile extends StatelessWidget {
  const Desktopprofile({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3,
     child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 8), // Adding margin for the main body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              Desktopappbarwidget(),
              SizedBox(height: 20), // Space between AppBar and main content

              // Row to split Sidebar and Content
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Sidebar with scrollable content
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: Desktopsidebar(),
                        ),
                      ),
                    ),

                    SizedBox(width: 20), // Space between Sidebar and Content

                    // Right Content wrapped in SingleChildScrollView for vertical scrolling
                    Expanded(
                      flex: 8,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical, // Allows vertical scrolling
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Desktopappbarintrowidget(), // Intro section for the right content
                            SizedBox(height: 20), // Space between intro and custom containers
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadiusDirectional.circular(10),
                                border: Border.all(width: 1)

                              ),
                              child: Row(
                                children: [
                                  // Left side (profile image)
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset("assets/images/profileImage.png",height: 158,width: 158,),
                                  ),
                                  SizedBox(width: 10), // Space between profile image and text
                                  // Middle (title and subtitle)
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("M. Abu Bakar Ghumman"),
                                      Text(
                                        "ghummanabubakar7@gmail.com",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 50,),
                                  // Right side (edit icon)
                                 IconButton(onPressed: (){}, icon: Icon(Icons.edit, size: 40),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
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
                            Container(
                              height: 450, // You can adjust height as needed
                              child: TabBarView(
                                children: [
                                  // ABOUT TAB
                                  Container(
                                    margin: EdgeInsets.only(top:12),
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
                                    margin: EdgeInsets.only(top:12),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
   );
  }
}

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
