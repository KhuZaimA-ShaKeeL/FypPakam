
import 'package:flutter/material.dart';
import 'package:fyppakam/Pages/web/WebLogin.dart';
import 'package:fyppakam/Pages/web/webSignUpPage.dart';
import 'package:fyppakam/components/pakamText.dart';
import 'package:get/get.dart';

class WebLayot extends StatelessWidget {
  const WebLayot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 16, top: 20, bottom: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: pakAmText(
                                fontSize: 20,
                                letterspacing: 5,
                                fontWeight: FontWeight.bold)),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "About",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFE38080)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    onTap: () {
                                      Get.to(Weblogin());
                                      print("Login Button is Pressed");
                                    },
                                  ),
                                  Text("|",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                  InkWell(
                                      onTap: () {
                                        Get.to(Websignuppage());
                                        print("SignUp button is pressed");
                                      },
                                      child: Text("Sign up",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 16)))
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 3,
                  ),
                  Container(
                    //    color: Colors.blue,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Container(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "Pakistan’s #1\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 30)),
                              TextSpan(
                                  text: "   Affiliate\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 30)),
                              TextSpan(
                                  text: "  Marketing\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 30)),
                              TextSpan(
                                  text: "   Platform\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 30)),
                            ])),
                          ),
                        ),
                        Image.asset(
                          "assets/logo.png",
                          height: MediaQuery.of(context).size.height * 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFFE8E4E4),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/AMP.png",
                          // width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Color(0xFFD9D9D9),
                          ),
                          width: 344,
                          padding:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                          child: Center(
                            child: Column(
                              spacing: 50,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Share Your Deals",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Get Orders",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Earn Real cash",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Withdraw when you are earning",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Our Highlights",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  /*Row(
                    children: [
                      Expanded(child: Image.asset("assets/images/BL.png")),
                      Expanded(child: Image.asset("assets/images/BL.png")),
                      Expanded(child: Image.asset("assets/images/BL.png")),
                    ],
                  )*/
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset("assets/images/OurPartner.png"),
                        ),
                        Expanded(
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Join now"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  textStyle: TextStyle(fontSize: 18),
                                  elevation: 0,
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text("Our customers",
                      textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:MediaQuery.of(context).size.height * 0.8 ,
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  "assets/images/person1.png",
                                //  width: MediaQuery.of(context).size.width*0.5,
                                  height: MediaQuery.of(context).size.height*0.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "John , Businessman",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\"I just made a Telegram group & kept sharing deals. I get good income from orders that get placed\"",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:MediaQuery.of(context).size.height * 0.8 ,
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  height: MediaQuery.of(context).size.height*0.5,

                                  "assets/images/person2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "John , Student",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\"PAKAM is the best source of pocket money for students like me\"",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:MediaQuery.of(context).size.height * 0.8 ,
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  height: MediaQuery.of(context).size.height*0.5,

                                  "assets/images/person3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Alexander, Youtuber",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\"I love using this app! In just 60 days, I was able to earn over \$1,500!.\"",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:MediaQuery.of(context).size.height * 0.8 ,

                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  height: MediaQuery.of(context).size.height*0.5,
                                  "assets/images/person4.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Nisha, Housewife",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\"I have made ₹3500 from family's grocery & medicine shopping. Must try.\"",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.4
                  ),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              color: Color(0xFF373232),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start, // aligns children from the top
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About PAKAM", style: TextStyle(color: Colors.green, fontSize: 25)),
                        SizedBox(height: 15),
                        Text("> About us", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Blog", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> FAQ's", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Useful Reads", style: TextStyle(color: Colors.green, fontSize: 25)),
                        SizedBox(height: 15),
                        Text("> Terms and Conditions", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Privacy and cookie policy", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Antispam policy", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Connect with us", style: TextStyle(color: Colors.green, fontSize: 25)),
                        SizedBox(height: 15),
                        Text("> Get help", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Telegram", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Facebook", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Instagram", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Twitter", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                        Text("> Youtube", style: TextStyle(color: Color(0xFFAFA3A3), fontSize: 20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Color(0xFF272424),
              child:Text('${String.fromCharCode(0x00A9)} 2025 PAKAM. All rights reserved.',textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white
              ))
              ,
            )

          ],

        ),
      ),
    );
  }
}
