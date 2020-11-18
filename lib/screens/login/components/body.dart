import 'package:flutter/material.dart';
import 'package:flutter_project_1/components/already_have_an_account_check.dart';
import 'package:flutter_project_1/components/rounded_button.dart';
import 'package:flutter_project_1/components/rounded_input_field.dart';
import 'package:flutter_project_1/components/rounded_password_field_text.dart';
import 'package:flutter_project_1/components/text_field_container.dart';
import 'package:flutter_project_1/constraint.dart';
import 'package:flutter_project_1/screens/login/components/background.dart';
import 'package:flutter_project_1/screens/signup/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset("assets/icon/login.svg",height: size.height*0.35,),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text : "LOGIN",
              press: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context){return DashboardPage();}),);
              },
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}),);
              },
            )
          ],
        ),
      ),
    );
  }
}









