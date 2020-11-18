import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_project_1/components/already_have_an_account_check.dart';
import 'package:flutter_project_1/components/rounded_button.dart';
import 'package:flutter_project_1/components/rounded_input_field.dart';
import 'package:flutter_project_1/components/rounded_password_field_text.dart';
import 'package:flutter_project_1/constraint.dart';
import 'package:flutter_project_1/screens/login/login_screen.dart';
import 'package:flutter_project_1/screens/signup/components/background.dart';
import 'package:flutter_project_1/screens/signup/components/or_divider.dart';
import 'package:flutter_project_1/screens/signup/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body(
      {Key key, @ required this.child}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset("assets/icon/signup.svg" ,height: size.height *0.3),
            //SizedBox(height: size.height * 0.03,),
            RoundedInputField(hintText: "Your Email",onChanged: (value){},),
            RoundedPasswordField(onChanged: (value){},),
            RoundedButton(
              text: "SIGNUP",
              press: (){},
            ),
            //SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);},
            ),
          ],
        ),
      ),
    );
  }
}





