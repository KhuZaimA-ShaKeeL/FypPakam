import 'package:flutter/material.dart';
import 'package:fyppakam/Controller/RadioButton.dart';
import 'package:fyppakam/Pages/Mobile/MobileLogin.dart';
import 'package:fyppakam/Pages/Mobile/MobileSignupPage.dart';
import 'package:fyppakam/components/pakamText.dart';
import 'package:get/get.dart';

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({super.key});

  @override
  Widget build(BuildContext context) {
    final RadioButtonController controller = Get.put(RadioButtonController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Use SizedBox with fixed height instead of Expanded
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.67, // Adjust height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.33333, // Adjust height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  pakAmText(fontSize: 50, letterspacing:20,fontWeight: FontWeight.w900 ),
                  SizedBox(height: 20),

                  // Buttons
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MobileLoginPage(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(120, 40),
                          ),
                          child: Text("Login"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(Mobilesignuppage());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(120, 40),
                          ),
                          child: Text("SignUp"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Checkbox
                  Obx(() => Padding(
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
                        SizedBox(width: 10),
                        Text("Agreement"),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
