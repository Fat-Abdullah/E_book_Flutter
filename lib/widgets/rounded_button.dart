import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback pressed;
  final double verticalPadding;
  final double fontSize;
  const RoundedButton({super.key,
    // super.key,

    required this.text,
    this.verticalPadding=13,
    this.fontSize=27,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap:pressed,
         child: Container(
           alignment: Alignment.center,
           margin: EdgeInsets.symmetric(vertical: 7,horizontal: 21),
           padding: EdgeInsets.symmetric(vertical: verticalPadding,),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(33),
             boxShadow: [BoxShadow(
               offset: Offset(0,21),
               blurRadius: 30,
               color: Color(0xff676666).withOpacity(.31),
             ),
             ],
           ),
           child: Text(
             text,
             style: TextStyle(
                 fontSize: fontSize,
                 fontWeight: FontWeight.bold,
             ),
           ),
         )
       ,
    );
  }
}