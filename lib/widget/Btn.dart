import 'package:flutter/material.dart';

class Button extends StatelessWidget {
String text;
Color color;
VoidCallback function;

  Button({required this.text,required this.color,required this.function});
@override
  Widget build(BuildContext context) {
      return ElevatedButton(
      onPressed: function,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(text ,style: TextStyle(color: Colors.black,fontSize: 20 ) )),
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
