import 'dart:async';

import 'package:e_book_final_flutter_project/constants.dart';
import 'package:e_book_final_flutter_project/screens/detaiils.dart';
import 'package:e_book_final_flutter_project/screens/home.dart';
import 'package:e_book_final_flutter_project/screens/sign%20in.dart';
import 'package:e_book_final_flutter_project/screens/signUp.dart';
import 'package:e_book_final_flutter_project/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "sign":(context)=>signin(),
        "hom":(context)=>HomeScreen(),
        "wel":(context)=>WelcomeScreen(),
         "signUp":(context)=>SignUpView(),
        "det":(context)=>Dets(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        ),
        // useMaterial3: true,
      ),
      home:  const WelcomeScreen(),
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/ images/Bitmap.png"),
          fit:BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.displayLarge,
            children: const [TextSpan(
              text: "flamin",
              style: TextStyle(color: Colors.black87,
                  fontWeight: FontWeight.w300,),
            ),
              TextSpan(
                text: "go.",
                style:TextStyle(fontWeight: FontWeight.bold,
                 fontFamily: "Times New Roman"),
              ),
            ],
          ),
        ),
          SizedBox(height: 11,),
          SizedBox(
            width:237,
            child: RoundedButton(
              text: "Sign In",
              fontSize: 19,
              pressed: () {
                Navigator.pushNamed(context,"sign");
                },

              ),
          ),

        ],
      ),
    ),
    );
  }
 }




