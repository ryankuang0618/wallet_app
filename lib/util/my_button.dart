import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String icomImagePath;
  final String buttonText;

  const MyButton(
      {Key? key, required this.buttonText, required this.icomImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ]),
          child: Center(child: Image.asset(icomImagePath)),
        ),
        SizedBox(height: 12),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
      ],
    );
  }
}
