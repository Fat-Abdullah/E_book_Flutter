import 'package:e_book_final_flutter_project/constants.dart';
import 'package:e_book_final_flutter_project/widgets/reading_card.dart';
import 'package:flutter/material.dart';
import '../widgets/book_rating.dart';
import '../widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height *.1),
                  //top text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: const [
                          TextSpan(text: "What are you \nreading ",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                              )),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Times New Roman",
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:[
                        ReadingListCard(
                          image: "assets/ images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.pushNamed(context,"det");                          }, pressRead: (){},
                        ),
                         ReadingListCard(
                          image: "assets/ images/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8, pressDetails:(){} ,pressRead:(){},
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: const [
                              TextSpan(text: "Best of the ",
                                  style: TextStyle(
                                    fontFamily: "Times New Roman",
                                  )),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontFamily:"Times New Roman",),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        SizedBox(height: 17,),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(text: "Continue ",
                                  style: TextStyle(
                                    fontFamily: "Times New Roman",
                                  )),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: "Times New Roman",),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 11),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(

                                offset: Offset(0, 10),
                                blurRadius: 33,
                                // color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Expanded(
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/ images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 11),
      width: double.infinity,
      height: 223,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 227,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 11,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "How To Win \nFriends &  Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children:  [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: 4.9,),
                        ),
                        Expanded(
                          child: Text(
                            "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/ images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width *.3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}






