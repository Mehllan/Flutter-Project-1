import 'package:flutter/material.dart';
import 'package:flutter_project_1/components/text_field_container.dart';
import 'package:flutter_project_1/constraint.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key, this.hintText, this.icon = Icons.person, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Enter Your Email",
          icon: Icon(icon,color: kPrimaryColor,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}