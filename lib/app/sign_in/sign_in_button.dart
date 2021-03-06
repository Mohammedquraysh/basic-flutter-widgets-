import 'package:flutter/cupertino.dart';
import 'package:flutter_project/common_widget/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton{
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    required double height,
}): super(
    onPressed: onPressed,
    child: Text(text,
      style: TextStyle(color: textColor, fontSize: 15.0),
    ),
    color: color,
    borderRadius: 4.0,
    height: height
  );
}