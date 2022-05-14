// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyListTilie extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubTitle;
  const MyListTilie(
      {Key? key,
      required this.iconImagePath,
      required this.tileName,
      required this.tileSubTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    tileSubTitle,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
