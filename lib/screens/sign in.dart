import 'package:e_book_final_flutter_project/screens/signUp.dart';
import 'package:e_book_final_flutter_project/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../widgets/roundtextfield.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kWhiteColor,
      appBar: AppBar(
        backgroundColor:kWhiteColor,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/ images/1715446851610.png"),
          //     fit:BoxFit.fill,
          //   ),
          // ),
          padding:const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              RoundTextfield(
                hintText: "Group Special Code",
                keybardType: TextInputType.phone,
                controller: txtCode,
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
                controller: txtPassword,
                hintText: "Password",
                obscureText: true,
                keybardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(onPressed: (){setState(() {
                    isStay = !isStay;
                  });
                  },
                    icon: Icon(
                      isStay
                          ?Icons.check_box :
                      Icons.check_box_outline_blank,
                      color: isStay ? Colors.brown : Colors.brown,
                    ),
                  ),
                  Text(
                    "Stay logged In",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 13,
                    ),
                  ),
                  const Spacer(),

                  TextButton(onPressed: (){}, child: Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 11,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 31,),
        RoundedButton(
                  text: "Sign In",
                  fontSize: 19,
                  pressed: () {
                    Navigator.pushNamed(context,"hom");
                  },

                ),
              Container(
                height: 27,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,"signUp");
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontStyle: FontStyle.italic),
                      children: [
                        TextSpan(text: "Not registered?",
                        style: TextStyle(color: kLightBlackColor,fontSize:17),
                      ),
                        TextSpan(text: "Create an account ",
                          style: TextStyle(color: Colors.blue,fontSize: 17),
                        )
                      ]
                    ),

                    ),
                ),
                ),

            ],

          ),

      ),
    );
  }
}
