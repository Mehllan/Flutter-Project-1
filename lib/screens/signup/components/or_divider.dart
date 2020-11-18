import 'package:flutter/material.dart';
import 'package:flutter_project_1/constraint.dart';

class orDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR" ,style: TextStyle(color: kPrimaryColor , fontWeight: FontWeight.bold),),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D909),
        height: 1.5,
      ),
    );
  }
}