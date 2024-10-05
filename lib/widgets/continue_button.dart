import 'package:flutter/material.dart';

import '../pages/sign_up_page.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepOrangeAccent,
      ),
      alignment: Alignment.center,
      height: 50,
      width: 350,
      child: Text("Continue",
          style: TextStyle(color: Colors.white),
        ),
    );
  }
}
