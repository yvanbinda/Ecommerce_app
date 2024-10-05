import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/continue_button.dart';
import '../widgets/socialMedia_icon.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final int success = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100.0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        title: Text(
          success == !false ? "Sign Up" : "Forgot Password",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black38),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
              "Register Account",
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              width: 280,
              child: Column(
                children: [
                  Text("Complete your details or continue",
                      style: TextStyle(color: Colors.black38)),
                  Text(
                    " with social media",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.mail_outline),
                    suffixIconColor: Colors.grey,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.lock_outlined),
                    suffixIconColor: Colors.grey,
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Re-enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.lock_outlined),
                    suffixIconColor: Colors.grey,
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    success == 0;
                  });
                  print("tapped");
                },
                child: ContinueButton()),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialmediaIcon(mediaIcon: "assets/icons/google-icon.svg"),
                SizedBox(width: 10,),
                SocialmediaIcon(mediaIcon: "assets/icons/facebook-2.svg"),
                SizedBox(width: 10,),
                SocialmediaIcon(mediaIcon: "assets/icons/twitter.svg"),
                //   Container(
                //     width: 35.0,
                //     height: 35.0,
                //     padding: EdgeInsets.all(10.0),
                //       decoration: BoxDecoration(color: Color.fromARGB(255, 204, 239, 244),borderRadius: BorderRadius.circular(50)),
                //       child: SvgPicture.asset("assets/icons/google-icon.svg",height: 25.0, width: 25.0,)),
                //   SizedBox(width: 10,),
                //   Container(
                //       width: 35.0,
                //       height: 35.0,
                //       padding: EdgeInsets.all(10.0),
                //       decoration: BoxDecoration(color: Color.fromARGB(255, 204, 239, 244),borderRadius: BorderRadius.circular(50)),
                //       child: SvgPicture.asset("assets/icons/facebook-2.svg",height: 25.0, width: 25.0,)),
                //   SizedBox(width: 10,),
                //   Container(
                //       width: 35.0,
                //       height: 35.0,
                //       padding: EdgeInsets.all(10.0),
                //       decoration: BoxDecoration(color: Color.fromARGB(255, 204, 239, 244),borderRadius: BorderRadius.circular(50)),
                //       child: SvgPicture.asset("assets/icons/twitter.svg",height: 25.0, width: 25.0,)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("By continuing you confirm that you agree",
                style: TextStyle(color: Colors.black38)),
            Text("with our terms and conditions",
                style: TextStyle(color: Colors.black38))
          ],
        ),
      ),
    );
  }
}
