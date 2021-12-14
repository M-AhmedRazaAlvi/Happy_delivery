// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:happy_delivery/Screens/auth/request_password.dart';
import 'package:happy_delivery/utils/app_colors.dart';
import 'package:happy_delivery/utils/icon_images.dart';
import 'package:happy_delivery/utils/images.dart';
import 'package:happy_delivery/Screens/serviecs/landing_page.dart';
import 'package:happy_delivery/widget/text_widget.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(Images.happylogo)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0)),
                    prefixIcon: Image.asset(IconImages.loginperson),
                    hintText: 'Email/Username',
                    hintStyle: TextStyle(
                        color: Colors.black26, fontWeight: FontWeight.bold)),
              ),
            ),
            TextFormField(
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
            SizedBox(height: 20),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LandingPage(),
                  ));
                },
                child: TextFieldWidget(text: "Login")),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RequestPassword(),
                ));
              },
              child: Text("Request Password",
                  style: TextStyle(
                    color: AppColors.redColor,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
