

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../common_widget/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton{
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    required double height,
  }):assert(text != null),
        super(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(assetName,
              height: 60.0,
              width: 30.0,
            ),
            Text(text,
              style: TextStyle(color: textColor, fontSize: 15.0),),
            Opacity(opacity: 0.0,
              child:Image.asset(assetName ,
                height: 60.0,
                width: 30.0,
              ),
            )
          ]
      ),
      color: color,
      borderRadius: 4.0,
      height: height
  );
}