import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Desktop/DesktopSignupPage.dart';
import 'package:get/get.dart';
import '../Controller/RadioButton.dart';
import '../Pages/Desktop/DsktopLogin.dart';
import '../components/pakamText.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final RadioButtonController controller = Get.put(RadioButtonController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First section (Logo)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6, // 2/3 of the screen
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
            ),

            // Second section (Text, Buttons, Checkbox)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3, // 1/3 of the screen
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pakAmText(fontSize: 50, letterspacing: 20.0,fontWeight: FontWeight.w900,),
                  const SizedBox(height: 20),

                  // Buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DesktopLoginPage(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: const Size(120, 40),
                          ),
                          child: const Text("Login"),
                        ),
                        const SizedBox(width: 50),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DesktopSignUpPage(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: const Size(120, 40),
                          ),
                          child: const Text("SignUp"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Checkbox
                  Obx(
                        () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: controller.isChecked.value,
                            onChanged: (value) {
                              controller.setButton(value ?? false);
                            },
                          ),
                          const SizedBox(width: 20),
                          const Text("Agreement"),
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
