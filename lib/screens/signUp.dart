import 'package:e_book_final_flutter_project/widgets/rounded_button.dart';
import 'package:e_book_final_flutter_project/widgets/roundtextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignUpView extends StatefulWidget {
  // final String title;

  const SignUpView({Key? key,
  // required this.title
   }) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black, // Assuming primary color is black
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black, // Assuming text color is black
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextfield(
                controller: txtFirstName,
                hintText: "First & Last Name",
                keybardType: null,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextfield(
                controller: txtEmail,
                hintText: "Email Address",
                keybardType:TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),

              RoundTextfield(
                controller: txtMobile,
                hintText: "Mobile Phone",
                keybardType:TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextfield(
                controller: txtCode,
                hintText: "Group Special Code(optional)",
                keybardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextfield(
                controller: txtPassword,
                hintText: "Password",
                obscureText: true,
                keybardType: TextInputType.visiblePassword,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        isStay = !isStay;
                      });
                    },
                    icon:Icon(
                      isStay ? Icons.check_box :Icons.check_box_outline_blank,
                      color: isStay
                          ? Colors.brown : Colors.brown,
                    ),
                  ),
                  Expanded(
                    child:
                    Text(
                      "Please sign me up for the monthly newsletter.",
                             style:TextStyle(color: Colors.brown),
                    )
                  ),
                ],

              ),


              const SizedBox(
                height: 27,
              ),
              RoundedButton(
                text: "Sign Up",
                fontSize:19,
                pressed: (){
                  Navigator.pushNamed(context,"hom");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}