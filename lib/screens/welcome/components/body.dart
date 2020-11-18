import 'package:flutter/material.dart';
import 'package:flutter_project_1/components/rounded_button.dart';
import 'package:flutter_project_1/screens/login/login_screen.dart';
import 'package:flutter_project_1/screens/signup/signup_screen.dart';
import 'package:flutter_project_1/screens/welcome/components/background.dart';
import 'package:flutter_project_1/constraint.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text("WELCOME TO EDU",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset("assets/icon/chat.svg",height: size.height*0.45,),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}),);},
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}),);
              },
            ),
          ],
    ),
      ),);
  }
}




