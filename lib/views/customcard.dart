// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:medapp/views/customButton.dart';
import 'package:medapp/views/customText.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String description;
  final Url? imageUrl;
  final Color? color;
  

  MyCard({
    required this.title ,
    required this.description ,
    this.imageUrl ,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Align children center
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.center, // Center align title
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          //Text(title, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          Text(
            description,
            textAlign: TextAlign.center, // Center align description
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          customButton(buttonLabel: "Order now") ,
        ],
      ),
      
      
    );
  }
}
