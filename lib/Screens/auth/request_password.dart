// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:happy_delivery/utils/icon_images.dart';
import 'package:happy_delivery/utils/images.dart';
import 'package:happy_delivery/Screens/serviecs/landing_page.dart';
import 'package:happy_delivery/widget/text_widget.dart';

class RequestPassword extends StatelessWidget {
  const RequestPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(Images.happylogo)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0)),
                    prefixIcon: Image.asset(IconImages.password),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.black26, fontWeight: FontWeight.bold)),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LandingPage(),
                    ),
                  );
                },
                child: TextFieldWidget(text: "Request")),
          ],
        ),
      ),
    );
  }
}
