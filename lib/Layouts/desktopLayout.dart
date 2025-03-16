import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/RadioButton.dart';
import '../components/pakamText.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final RadioButtonController controller = Get.put(RadioButtonController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First section (Logo) takes 2/3 of the screen
            Expanded(
              flex: 2, // Takes 2/3 of the screen
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
            ),
        
            // Second section (Text, Buttons, Checkbox) takes 1/3 of the screen
            Expanded(
              flex: 1, // Takes 1/3 of the screen
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pakAmText(fontSize: 50, letterspacing:20 ),
                  SizedBox(height: 20),
        
                  // Buttons
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(120, 40),
                          ),
                        ),
                        SizedBox(width: 50),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("SignUp"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(120, 40),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
        
                  // Checkbox
                  Obx(
                        () => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: controller.isChecked.value,
                            onChanged: (value) {
                              controller.setButton(value);
                            },
                          ),
                          SizedBox(width: 20),
                          Text("Agreement"),
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
    );
  }
}
