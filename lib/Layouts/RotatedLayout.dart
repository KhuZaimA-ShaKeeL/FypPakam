import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/RadioButton.dart';
import '../components/pakamText.dart';

class Rotatedlayout extends StatelessWidget {
  const Rotatedlayout({super.key});

  @override
  Widget build(BuildContext context) {
    final RadioButtonController controller = Get.put(RadioButtonController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20), // Add padding for spacing
          child: Column(
            mainAxisSize: MainAxisSize.min, // Allow it to expand naturally
            children: [
              // Logo Section
              Image.asset(
                'assets/logo.png',
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SizedBox(height: 30), // Add spacing

              // Text Section
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
                      SizedBox(width: 10),
                      Text("Agreement"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
