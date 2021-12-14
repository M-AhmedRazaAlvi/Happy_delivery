// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:happy_delivery/utils/app_colors.dart';
import 'package:happy_delivery/utils/images.dart';
import 'package:happy_delivery/widget/text_widget.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({
    Key? key,
  }) : super(key: key);

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
            Text(
              "Reason for Assistance",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CheckedBox4(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: MediaQuery.of(context).size.height * 0.15,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Reason...",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    border: InputBorder.none),
              ),
            ),
            InkWell(
              child: TextFieldWidget(text: "Switch"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          title: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            child: Column(
                              children: [
                                Text(
                                  "Your Order Switched with",
                                  style: TextStyle(
                                      color: AppColors.redColor, fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Image(
                                      image: AssetImage(Images.boy),
                                      height: 60,
                                      width: 60),
                                ),
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Reached you in few minutes",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CheckedBox4 extends StatefulWidget {
  const CheckedBox4({Key? key}) : super(key: key);

  @override
  State<CheckedBox4> createState() => _CheckedBox4State();
}

class _CheckedBox4State extends State<CheckedBox4> {
  int indx = 0;
  final List<Widget> myLists = [
    Text("Tyre Flat", style: TextStyle(fontSize: 16)),
    Text("Low Gas", style: TextStyle(fontSize: 16)),
    Text("Engine Problem", style: TextStyle(fontSize: 16)),
    Text("Other", style: TextStyle(fontSize: 16)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (contex, index) {
        return Container(
          margin: EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () {
              setState(() {
                indx = index;
              });
            },
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color:
                              indx == index ? AppColors.redColor : Colors.black,
                          width: indx == index ? 3 : 1)),
                ),
                SizedBox(width: 10),
                myLists[index],
              ],
            ),
          ),
        );
      },
    );
  }
}
