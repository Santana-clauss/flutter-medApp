// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medapp/config/const.dart';
import 'package:medapp/views/customText.dart';
import 'package:medapp/views/customTextField.dart';
import 'package:medapp/views/customcard.dart';
import 'package:medapp/views/customtbutton.dart';

TextEditingController search=TextEditingController();

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,)
                    ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      children: [
                        Icon(Icons.location_city_rounded),
                        customText(label: "11204-5761 New York"),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.shopping_basket),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 // width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow()],),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(                
                          children: [
                            Icon(Icons.search),
                            customText(label: "Search Medicines",labelColor: appGreyColor,),
                          ],
                        ),
                        SizedBox(width: 200,),
                        Icon(Icons.voice_chat),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.scanner_rounded),
              ],
            ),
            SizedBox(height: 20,),
    
            MyCard(title: "Order medicine", description:"Upload Prescription and tell us what you need .We do the rest",color: appGreenColor,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.category),
                    customText(label: "Category"),
                  ],
                ),
                customText(label: "View All",labelColor: Colors.green,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(iconImagePath: '/images/barbell.png', buttonText: "fitness"),
                MyButton(iconImagePath: "/images/lifestyle.png", buttonText: "Lifestyle"),
                MyButton(iconImagePath: "/images/personal.png", buttonText: "Personal Care"),
                MyButton(iconImagePath: "/images/family.png", buttonText: "Family"),
              ],
            )

          ]
  
        ),
      ),
    );
  }
}
