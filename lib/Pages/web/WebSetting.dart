import 'package:flutter/material.dart';
import 'package:fyppakam/components/WebSideBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Controller/SwitchControllers.dart';
import '../../components/DesktopAppBarIntroWidget.dart';
import '../../components/DesktopAppbarWidget.dart';
class Websetting extends StatefulWidget {
  const Websetting({super.key});

  @override
  State<Websetting> createState() => _WebsettingState();
}

class _WebsettingState extends State<Websetting> {

  final SwitchControllers switchController1 =
  Get.put(SwitchControllers(), tag: "Setting1");
  final SwitchControllers switchController2 =
  Get.put(SwitchControllers(), tag: "Setting2");
  final SwitchControllers switchController3 =
  Get.put(SwitchControllers(), tag: "Setting3");

  List<String> settingOptions = [
    "User Account and Profile Settings",
    "Data and Privacy",
    "Password and Security"
  ];

  List<bool> isExpandedList = [];

  @override
  void initState() {
    super.initState();

    // Initialize switch list
    _initializeSwitches(switchController1);
    _initializeSwitches(switchController2);
    _initializeSwitches(switchController3);

    // Initialize expanded sections
    isExpandedList = List.generate(settingOptions.length, (index) => false);
  }

  void _initializeSwitches(SwitchControllers controller) {
    if (controller.isCheckedList.length < settingOptions.length) {
      for (int i = controller.isCheckedList.length;
      i < settingOptions.length;
      i++) {
        controller.addSwitch(false);
      }
    }
  }

  // Helper to select correct controller based on index
  SwitchControllers getControllerByIndex(int index) {
    switch (index) {
      case 0:
        return switchController1;
      case 1:
        return switchController2;
      case 2:
        return switchController3;
      default:
        return switchController1;
    }
  }

  Widget buildRow(
      int index, String number, String setting, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        color: Colors.transparent,
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(number),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(setting),
              ),
            ),
            Expanded(
              child: Icon(isExpandedList[index]
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSwitchList(int index) {
    final controller = getControllerByIndex(index);
    return Obx(() => Column(
      children: List.generate(controller.isCheckedList.length, (i) {
        return ListTile(
          title: Text("${i + 1}. Amazon Pakistan"),
          trailing: Switch(
            value: controller.isCheckedList[i],
            onChanged: (value) => controller.setButton(i, value),
          ),
        );
      }),
    ));
  }

  Divider buildDivider() => Divider(thickness: 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesktopandWebappbarwidget(),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Sidebar
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.85,
                      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),
                      ),
                      child: SingleChildScrollView(
                        child: Websidebar(),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),

                  // Right Content
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.85,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DesktopandWebappbarintrowidget(),
                            SizedBox(height: 20),

                            // Table Header
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                child: Row(
                                  spacing: 10,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Color(0xFFF5F5F5),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 6),
                                      child: Text("# No",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF89E469),
                                          borderRadius:
                                          BorderRadius.circular(6),
                                        ),
                                        child: Text("Setting Options",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey[200],
                                          borderRadius:
                                          BorderRadius.circular(6),
                                        ),
                                        child: Text("On/Off",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            // Settings Rows
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Column(
                                children: List.generate(settingOptions.length,
                                        (index) {
                                      return Column(
                                        children: [
                                          buildRow(index, "${index + 1}.",
                                              settingOptions[index], () {
                                                setState(() {
                                                  isExpandedList[index] =
                                                  !isExpandedList[index];
                                                });
                                              }),
                                          buildDivider(),

                                          // Show switches if expanded
                                          if (isExpandedList[index]) ...[
                                            buildSwitchList(index),
                                            buildDivider(),
                                          ]
                                        ],
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}