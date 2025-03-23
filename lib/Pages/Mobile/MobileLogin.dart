import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Mobile/MobileHome.dart';
import 'package:fyppakam/Pages/Mobile/MobileSignupPage.dart';
import 'package:fyppakam/components/CustomButton.dart';
import 'package:fyppakam/components/CustomButtonWithImage.dart';
import 'package:fyppakam/components/PasswordField.dart';
import 'package:fyppakam/components/pakamText.dart';
import 'package:get/get.dart';

import '../../components/CustomTextField.dart';

class MobileLoginPage extends StatelessWidget {

  MobileLoginPage({super.key});

  //var _formkey = GlobalKey<FormState>();

  TextEditingController etEmail = TextEditingController();
  TextEditingController etPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pakAmText(fontSize: 30, letterspacing: 10),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/mLoginimage.png'),
                SizedBox(height: 15),
                Text(
                  "Welcome",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "New User? ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mobilesignuppage()),
                        );
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonWithImage(
                  name: "Continue with Facebook",
                  path: 'assets/images/facebook_logo.png',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                CustomButtonWithImage(
                  name: "Continue with Google",
                  path: "assets/images/google_logo.png",
                  onPressed: () {},
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black, // Line color
                        thickness: 2, // Line thickness
                        // Left spacing
                        // Right spacing
                      ),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Divider(
                        color: Colors.black, // Line color
                        thickness: 2, // Line thickness
                        // Left spacing
                        // Right spacing
                      ),
                    ),
                  ],
                ),
                Customtextfield(
                  label: "Enter Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: etEmail,
                ),
                SizedBox(
                  height: 5,
                ),
                Passwordfield(controller: etPassword, label: "Enter Passwords"),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.w500),),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Custombutton(label: "Login",radius: 20, onPressed:(){

                  Get.offAll(Mobilehome());

                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
