// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:happy_delivery/widget/complete_widget.dart';
import 'package:happy_delivery/widget/controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:happy_delivery/widget/navigation_widget.dart';
import 'package:happy_delivery/widget/received_widget.dart';
import 'package:happy_delivery/widget/request_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Completer<GoogleMapController> _controller = Completer();
  int selectedIndex = 0;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  bool selected = false;
  Controllers controllers = Controllers();

  @override
  Widget build(BuildContext context) {
    print("----------------------home-----------------------");
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Center(
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: selected ? Colors.white : Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    width: selected
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width,
                    height: selected
                        ? MediaQuery.of(context).size.height * 0.06
                        : selectedIndex == 0
                            ? MediaQuery.of(context).size.height * 0.45
                            : selectedIndex == 1
                                ? MediaQuery.of(context).size.height * 0.33
                                : selectedIndex == 2
                                    ? MediaQuery.of(context).size.height * 0.6
                                    : MediaQuery.of(context).size.height * 0.6,
                    alignment: selected
                        ? Alignment.bottomCenter
                        : Alignment.bottomCenter,
                    duration: Duration(milliseconds: 400),
                    child: selected
                        ? Container(
                            width: MediaQuery.of(context).size.width,
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 60,
                              color: Colors.black26,
                            ),
                          )
                        : PageView(
                            onPageChanged: (index) {
                              setState(() {
                                selectedIndex = index;
                                controllers = controllers;
                              });
                              print(selectedIndex);
                            },
                            scrollDirection: Axis.horizontal,
                            controller: controllers.controller,
                            children: <Widget>[
                              NavigationWidget(controllers: controllers),
                              ReceivedWidget(controllers: controllers),
                              CompleteWidget(controllers: controllers),
                              RequestWidget(),
                            ],
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
