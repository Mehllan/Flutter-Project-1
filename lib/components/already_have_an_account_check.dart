import 'package:flutter/material.dart';
import 'package:flutter_project_1/constraint.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key, this.login = true, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( login ? "Don't have an Account ?" : "Already Have an Account ?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          child: Text(login ? "SIGN UP" : "SIGN IN" , style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),),
          onTap: press,
        ),
      ],
    );
  }
}