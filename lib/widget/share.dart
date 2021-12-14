// // ignore_for_file: avoid_unnecessary_containers, unused_local_variable, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharePrefr extends StatefulWidget {
//   const SharePrefr({Key? key}) : super(key: key);

//   @override
//   _SharePrefrState createState() => _SharePrefrState();
// }

// class _SharePrefrState extends State<SharePrefr> {
//   TextEditingController textController = TextEditingController();

//   void savetext(String text) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString("text", text);
//   }

//   void readText() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? savedValue = prefs.getString("text");
//     if (savedValue != null) {
//       textController.text = savedValue;
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     readText();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 controller: textController,
//                 onChanged: (val) {
//                   savetext(val);
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
