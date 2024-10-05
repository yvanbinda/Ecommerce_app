import 'package:e_commerce_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../widgets/continue_button.dart';

class OpenPage extends StatelessWidget {
  const OpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(children: [
         SizedBox(
          height: 100,
        ),
         Text(
          "TOKOTO",
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
         Text.rich(TextSpan(children: [
          TextSpan(text: 'Welcome to'),
          TextSpan(
              text: ' Tokoto', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ', Let\'s shop !'),
        ])),
        const SizedBox(height: 50,),
        Container(
          width: 600,
          height: 350,
          child: PageView(
            children: [
              Image.asset("assets/images/photo_2024-02-19_17-36-33.jpg"),
              Image.asset("assets/images/photo_2024-02-19_17-36-36.jpg"),
              Image.asset("assets/images/photo_2024-02-19_17-36-42.jpg"),
            ],
          ),
        ),
        const SizedBox(height: 100,),
        GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage())); } ,
            child: ContinueButton()),
      ]),
    );
  }
}
