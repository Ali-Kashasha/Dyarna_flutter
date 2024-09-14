import 'package:flutter/material.dart';



class CustomNavigatBar extends StatefulWidget {
  @override
  CustomNavigatBarState createState() => CustomNavigatBarState();
}

class CustomNavigatBarState extends State<CustomNavigatBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),

        child:

        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: 5,
                    left: 3,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                ),

                Icon(
                  listOfIcons[index],
                  size: size.width * .076,

                  color: index == currentIndex
                      ? Color(0xff4D869C)
                      : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),

    );
  }

  List<IconData> listOfIcons = [
    Icons.more_vert,
    Icons.favorite_rounded,
    Icons.storefront,
    Icons.play_circle_outline,
    Icons.contact_support_outlined,
    Icons.home_rounded,
  ];
}