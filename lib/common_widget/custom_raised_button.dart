import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    required this.child,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
   required this.height
});
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback  onPressed;
  final double height;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child:RaisedButton(onPressed: onPressed,
      child: child,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(borderRadius)
          )
      ),
      ),
    );
  }
}
