import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/web/WebLogin.dart';

import '../../components/CustomButton.dart';
import '../../components/CustomButtonWithImage.dart';
import '../../components/CustomTextField.dart';
import '../../components/PasswordField.dart';
import '../../components/pakamText.dart';
class Websignuppage extends StatelessWidget {
   Websignuppage({super.key});


   TextEditingController etEmail = TextEditingController();
   TextEditingController etPassword = TextEditingController();
   TextEditingController etPhone = TextEditingController();
   TextEditingController etConfirmPassword = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: SingleChildScrollView(
           child: Container(
             width: MediaQuery.of(context).size.width * 0.7,
             constraints: BoxConstraints(
               minHeight: MediaQuery.of(context).size.height * 0.8, // Ensuring height
             ),
             decoration: BoxDecoration(border: Border.all(width: 1),),
             padding: EdgeInsets.all(20),
             child: IntrinsicHeight( // Ensuring the column takes full height
               child: Column(
                 children: [
                   /// **Title Row**
                   SizedBox(
                     width: double.infinity,
                     child: Center(
                       child: pakAmText(fontSize: 30, letterspacing: 10,fontWeight: FontWeight.bold),
                     ),
                   ),
                   SizedBox(height: 20),

                   /// **Main Content Row (Image + Form)**
                   Expanded(
                     child: Row(
                       children: [
                         /// **Left Column: Image**
                         Flexible(
                           flex: 1,
                           child: Container(
                             padding: EdgeInsets.only(bottom:10 ),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color:Color(0xFF42A121) ,
                             ),

                             child: Center(
                               child: Image.asset(
                                 'assets/images/mLoginimage.png',
                                 height:400,
                                 fit: BoxFit.contain,
                               ),
                             ),
                           ),
                         ),

                         /// **Right Column: Login Form**
                         Flexible(
                           flex: 2,
                           child: Center(
                             child: SizedBox(
                               width: 500, // Fixed width for the form
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   SizedBox(height: 10),

                                   /// **Welcome Text**
                                   Text(
                                     "Welcome Back!",
                                     style: TextStyle(
                                       letterSpacing: 2,
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                   SizedBox(height: 10),

                                   /// **SignUp Prompt**
                                   Row(
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         "Already have an account ",
                                         style: TextStyle(fontSize: 16, color: Colors.black),
                                       ),
                                       InkWell(
                                         onTap: () {
                                           Navigator.push(
                                             context,
                                             MaterialPageRoute(builder: (context) => Weblogin()),
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
                                   SizedBox(height: 20),



                                   /// **Social Media Buttons**
                                   CustomButtonWithImage(
                                     name: "Continue with Facebook",
                                     path: 'assets/images/facebook_logo.png',
                                     onPressed: () {},
                                   ),
                                   SizedBox(height: 5),
                                   CustomButtonWithImage(
                                     name: "Continue with Google",
                                     path: "assets/images/google_logo.png",
                                     onPressed: () {},
                                   ),
                                   SizedBox(height: 10),

                                   /// **OR Divider**
                                   Row(
                                     children: [
                                       Expanded(child: Divider(color: Colors.black, thickness: 2)),
                                       Padding(
                                         padding: EdgeInsets.symmetric(horizontal: 8),
                                         child: Text("OR"),
                                       ),
                                       Expanded(child: Divider(color: Colors.black, thickness: 2)),
                                     ],
                                   ),
                                   SizedBox(height: 10),



                                   SizedBox(height: 10),

                                   /// **Email & Password Fields**
                                   Customtextfield(
                                     label: "Enter Email",
                                     keyboardType: TextInputType.emailAddress,
                                     controller: etEmail,
                                   ),
                                   SizedBox(height: 5,),
                                   Customtextfield(
                                     label: "Enter phone",
                                     keyboardType: TextInputType.phone,
                                     controller: etPhone,
                                   ),
                                   SizedBox(height: 5),
                                   Passwordfield(
                                     controller: etPassword,
                                     label: "Enter Password",
                                   ),
                                   SizedBox(height: 5,),
                                   Passwordfield(
                                     controller: etConfirmPassword,
                                     label: "Enter confirm password",
                                   ),
                                   SizedBox(height: 10),

                                   /// **Login Button**
                                   Custombutton(
                                     label: "SignUp",
                                     radius: 20,
                                     onPressed: () {
                                       // Login logic here
                                     },
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
           ),
         ),
       ),
     );
   }
}

