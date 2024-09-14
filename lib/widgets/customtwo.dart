import 'package:flutter/material.dart';



class MyCustomNavigatBar extends StatefulWidget {
  @override
  MyCustomNavigatBarState createState() => MyCustomNavigatBarState();
}

class MyCustomNavigatBarState extends State<MyCustomNavigatBar> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<InkWell> buildcustomnavigator(){
      List<InkWell> navigatorItem=[];

      for(int index=0;index<6;index++){
        InkWell item=InkWell(
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
        );
        navigatorItem.add(item);
      }
      return navigatorItem;
    }
    return Container(
      margin: EdgeInsets.all(5),
      //height: size.width * .155,
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

      child: Row(
        children: buildcustomnavigator(),
      )

       /*   ListView.builder(
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
      ),*/

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
