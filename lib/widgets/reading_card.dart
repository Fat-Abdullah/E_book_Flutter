import 'package:e_book_final_flutter_project/widgets/two_side_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_book_final_flutter_project/constants.dart';
import 'book_rating.dart';
class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final VoidCallback pressDetails;
  final Function pressRead;

  const ReadingListCard({
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21, bottom: 40),
        height: 245,
        width: 202,
        child: Stack(
          children:[
            Positioned(
               bottom: 0,
               left: 0,
              right: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
             Image.asset(
              image,
              width: 150,
             ),
            Positioned(
              top: 35,
              right: 10,
              child: Column(
                children:  [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                    onPressed: () {},
                  ),
                  BookRating(score: rating),
                ],
              ),
            ),
            Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: auth,
                              style: TextStyle(
                                color: kLightBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),

                    //there is wrong
                    Row(
                     children:[
                          GestureDetector
                       (
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text("Details"),
                          ),
                      ),
                        Expanded(
                          child: TwoSideRoundedButton(
                            text: "Read",
                            press: pressRead,
                             ),
                        )
                     ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
