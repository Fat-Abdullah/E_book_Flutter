import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/book_rating.dart';
import '../widgets/rounded_button.dart';

class Dets extends StatelessWidget {
  const Dets({super.key});



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              Stack(
                alignment: Alignment.topCenter,
                children:[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: size.height * .12, left: size.width * .1, right: size.width * .02),
                    height: size.height * .48,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/ images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                  ),
                    child: BookInfo(size:size, key: null,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: size.height * .10, left: size.width * .001, ),
                    child:  IconButton(
                      onPressed:(){
                        Navigator.pop(context);
                      },
                      icon:Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: size.height *.4-20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        ChapterCard(
                          name: "Money",
                        chapterNumber: 1,
                          tag: "Life is about change",
                          press: () {},
                        ),
                        ChapterCard(
                          name: "Power",
                          chapterNumber: 2,
                          tag: "Everything loves power",
                          press: () {},
                        ),
                        ChapterCard(
                          name: "Influence",
                          chapterNumber: 3,
                          tag: "Inf. like never before",
                          press: () {},
                        ),
                        ChapterCard(
                          name: "Win",
                          chapterNumber: 4,
                          tag: "Winning is what matters",
                          press: () {},
                        ),
                        SizedBox(height: 27),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    RichText(
                        text:TextSpan(
                          style: Theme.of(context).textTheme.headlineMedium,
                            children:[
                              TextSpan(
                                text: "You might also",
                            ),
                              TextSpan(
                                  text: "like…",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                        ),
                    ),
                    SizedBox(height: 20),
                    Stack(
                        children:  [
                          Container(
                            height: 180,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding:
                                EdgeInsets.only(left: 24,top: 24,right: 150),
                                height: 200,
                                width: double.infinity,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(29),
                                  color: Color(0xFFFFF8F9),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    RichText(
                                      text: TextSpan(
                                        style:TextStyle(color: kBlackColor),
                                        children: [
                                          TextSpan(
                                              text: "How To Win \nFriends & Influence\n",
                                              style: TextStyle(
                                                  fontSize: 21,
                                              ),
                                          ),
                                          TextSpan(
                                              text: "Gary Venchuk",
                                            style: TextStyle(color: kLightBlackColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 27,),
                                    Row(
                                     children:  [
                                       BookRating(
                                         score:4.9,
                                       ),
                                       SizedBox(width: 10,),
                                       Expanded(
                                           child: RoundedButton(
                                             text:"Read",
                                             fontSize: 17,
                                             verticalPadding:10, pressed: (){},
                                           ),
                                       ),
                                     ],
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                              child:Image.asset(
                                "assets/ images/book-3.png",
                                width: 150,
                                fit: BoxFit.fitWidth,
                              ),
                          ),
                        ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
        ),
        ),


    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
    required this.press,

  });

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      padding:
      EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width-17,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children:[
          RichText(
              text: TextSpan(
             children: [
               TextSpan(
                   text: "Chapter $chapterNumber: $name ",
                   style: TextStyle(
                       fontSize: 16,
                   color: kBlackColor,
                     fontWeight: FontWeight.bold,
                   ),
               ),
               TextSpan(
                   text: tag,
                   style: TextStyle(color: kLightBlackColor),
               ),
             ],
              ),
          ),
          Spacer(),
          IconButton(
              icon: Icon(
                  Icons.arrow_forward_ios,
              size: 18,
              ),
            onPressed: press(),
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    required this.size,
    super.key,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
          children:  [
            Expanded(
                child: Column(
                  children:  [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Crushing &",
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            fontSize: 28
                        ),
                      ),
                      ),
                    Container(
                      margin: EdgeInsets.only(top: this.size.height * .005),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        "Influence",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    Container(
                    width: this.size.width * .3,
                      padding: EdgeInsets.only(top: this.size.height * .01),
                      child: Text(
                        "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 13,
                          color: kLightBlackColor,
                        ),
                      ),
                    ),

                            // Container(
                            //   margin: EdgeInsets.only(top: this.size.height * .015),
                            //   padding: EdgeInsets.only(left: 10, right: 10),
                            //   // decoration: BoxDecoration(
                            //   //   color: Colors.white,
                            //   //   borderRadius: BorderRadius.circular(27),
                            //   // ),
                            //   child: RoundedButton(
                            //     text: "Read",
                            //     fontSize: 11,
                            //     pressed: () { },
                            //   ),
                            //   ),

                          ],
                        ),
                        Column(
                          children:  [
                            IconButton(
                              icon: Icon(Icons.favorite_border, size: 20, color: Colors.grey,),
                              onPressed: () {},
                            ),
                            BookRating(score: 4.9),
                          ],
                        )
                      ],
                    )
                  ],
                ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "assets/ images/book-1.png",
                    height: double.infinity,
                    alignment: Alignment.topRight,
                    fit: BoxFit.fitWidth,
                  ),
                )),
          ],
      ),
    );
      }
}
