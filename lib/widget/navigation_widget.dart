// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:happy_delivery/utils/app_colors.dart';
import 'package:happy_delivery/utils/icon_images.dart';
import 'package:happy_delivery/widget/controller.dart';
import 'package:happy_delivery/widget/text_widget.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    Key? key,
    required this.controllers,
  }) : super(key: key);
  final Controllers controllers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Icon(
              Icons.keyboard_arrow_down,
              size: 60,
              color: Colors.black26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order ID",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("#NN1234",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(IconImages.cycle, height: 20, width: 20),
                      Container(
                        height: 35,
                        width: 3,
                        color: AppColors.redColor,
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Restaurant",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Hot restaurant",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal)),
                      Text("Rue Hoffmann 5, Genève, Suisse",
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8, top: 5),
                    height: 10,
                    width: 3,
                    color: AppColors.redColor)),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8, top: 5),
                    height: 8,
                    width: 3,
                    color: AppColors.redColor)),
            Container(
              margin: EdgeInsets.only(top: 5, left: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3, right: 20),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.redColor)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Customer",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Emilia Watson",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal)),
                      Text("Rue Hoffmann 5, Genève, Suisse",
                          style: TextStyle(color: Colors.black54)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    controllers.controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: TextFieldWidget(text: "Start Navigation")),
            )
          ],
        ),
      ),
    );
  }
}
