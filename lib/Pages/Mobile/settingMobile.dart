import 'package:flutter/material.dart';
import '../../components/CustomDrawerMobile.dart';
import '../../components/mobileAppBarWidget.dart';
import '../../components/mobileAppbarIntroWidget.dart';

class settingMobile extends StatefulWidget {
  const settingMobile({super.key});

  @override
  State<settingMobile> createState() => _settingMobileState();
}

class _settingMobileState extends State<settingMobile> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool toggleSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: customDrawerMobile(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Mobileappbarwidget(),
              const SizedBox(height: 5),
              Mobileappbarintrowidget(scaffoldKey: scaffoldKey),
              const SizedBox(height: 20),

              // Header Text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hi, PakAM User',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(height: 10),

              // Setting Options Button & Toggle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[300],
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Setting Options",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      const Text("On/Off", style: TextStyle(fontWeight: FontWeight.bold)),
                      Switch(
                        value: toggleSwitch,
                        onChanged: (value) {
                          setState(() {
                            toggleSwitch = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Setting Options List
              ExpansionTile(
                title: const Text("1.  User Account and Profile Settings"),
                children: const [
                  ListTile(title: Text("Edit Profile")),
                  ListTile(title: Text("Change Username")),
                ],
              ),
              ExpansionTile(
                title: const Text("2.  Data and Privacy"),
                children: const [
                  ListTile(title: Text("Manage Data Access")),
                  ListTile(title: Text("Clear History")),
                ],
              ),
              ExpansionTile(
                title: const Text("3.  Password and Security"),
                children: const [
                  ListTile(title: Text("Change Password")),
                  ListTile(title: Text("Enable 2FA")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
