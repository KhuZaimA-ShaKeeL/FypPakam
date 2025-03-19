import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/Mobile/MobileLogin.dart';
import 'package:fyppakam/components/pakamText.dart';

import '../../components/CustomButton.dart';
import '../../components/CustomButtonWithImage.dart';
import '../../components/CustomTextField.dart';
import '../../components/PasswordField.dart';
class Mobilesignuppage extends StatelessWidget {
  Mobilesignuppage({super.key});

  TextEditingController etEmail = TextEditingController();
  TextEditingController etPassword = TextEditingController();
  TextEditingController etPhone = TextEditingController();
  TextEditingController etConfirmPassword = TextEditingController();
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
                      "Already have an account ? ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobileLoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
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
                Customtextfield(
                  label: "Enter Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: etEmail,
                ),
                SizedBox(
                  height: 5,
                ),
                Customtextfield(
                  label: "Enter Phone",
                  keyboardType: TextInputType.emailAddress,
                  controller: etPhone,
                ),
                SizedBox(
                  height: 5,
                ),
                Passwordfield(controller: etPassword, label: "Enter Passwords"),
                SizedBox(
                  height: 5,
                ),
                Passwordfield(controller: etConfirmPassword, label: "Enter Confirm Passwords"),
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
                Custombutton(label: "SignUp",radius: 20, onPressed:(){

                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
