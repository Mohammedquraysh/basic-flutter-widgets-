import 'package:flutter/material.dart';
import 'package:flutter_project/app/sign_in/sign_in_button.dart';
import 'package:flutter_project/app/sign_in/social_sign_in-button.dart';
import 'package:flutter_project/common_widget/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[300],
    );
  }

  Container _buildContent() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Sign-in',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
          ),
          SizedBox(height: 48.0),
          SocialSignInButton(assetName: 'images/google.png',
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black54,
              onPressed: (){}, height: 50.0),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/faceb.png',
           text: 'Sign in with Facebook',
            color: Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {},
            height: 50.0,
          ),
          SizedBox(height: 8.0),
          SignInButton(text:'Sign in with Twitter',
            color: Color(0xFF00796B),
            textColor: Colors.white,
            onPressed: (){},
            height: 50.0,),
          SizedBox(height: 8.0),
          Text('or',
            style: TextStyle(fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(text:'Go Anonymous',
            color: Color(0xFFDCE775),
            textColor: Colors.black54,
            onPressed: (){},
            height: 50.0,),
        ],
      ),
    );
  }

}
