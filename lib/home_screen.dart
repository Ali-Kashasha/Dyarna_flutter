
import 'package:fashion/product_details_screen.dart';
import 'package:fashion/searching_screen.dart';
import 'package:fashion/widgets/customnavigationbar.dart';
import 'package:fashion/widgets/customtwo.dart';
import 'package:fashion/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('App Name'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 15),
              child: Icon(Icons.chat),
            ),
            Icon(Icons.notifications_none),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  icon:Icon(Icons.search),onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchingScreen()));
              } ,),
            ),
          ],
          bottom: TabBar(
            tabAlignment:TabAlignment.center,
            labelColor: Color(0xff4D869C),
            indicatorColor: Color(0xff4D869C),
            padding: EdgeInsets.symmetric(horizontal: 0),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: -5,vertical: 5),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color:Color(0xff4D869C), )
            ),
            tabs: [
              Tab(text: 'خيوط'),
              Tab(text: 'مستلزمات ملابس واكسسوار'),
              Tab(text: 'ملابس'),
              Tab(text: 'اقمشة'),

            ],
            isScrollable: true,
          ),
        ),
        body: Stack(
           children: [
             SingleChildScrollView(
               child: Column(
                 children: [
                   // Video Section
                   Container(
                       margin: EdgeInsets.all(16.0),
                       height: 200,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: NetworkImage(
                               'https://via.placeholder.com/150'), // Replace with your image
                           fit: BoxFit.cover,
                         ),
                       ),
                       child: MyShopVideo()
                     /*   Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),*/
                   ),
                   // Grid of Items
                   // Horizontal ListView for جلد
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10.0),
                     child: SizedBox(
                       height: 130, // Height of the horizontal list
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: 6,
                         itemBuilder: (context, index) {
                           return Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8.0),
                             child: GestureDetector(
                               onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetailScreen()));
                               },
                               child: Column(
                                 children: [
                                   Container(
                                     height: 80,
                                     width: 80,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: AssetImage(
                                             'assets/images/laser.png'),  // Replace with your image
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: 8),
                                   Text('جلد'),
                                 ],
                               ),
                             ),
                           );
                         },
                       ),
                     ),
                   ),

                   // List of Popular Shops
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'المزيد',
                               style: TextStyle(
                                 color: Colors.blue,
                                 fontSize: 18,
                                 decoration: TextDecoration.underline,
                               ),
                             ),
                             Text(
                               'محلات الأكثر شهرة',
                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                             ),

                           ],
                         ),

                         SizedBox(height: 8),
                         GridView.builder(
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             crossAxisSpacing: 10,
                             mainAxisSpacing: 10,
                             //childAspectRatio: 0.75,
                           ),
                           itemCount: 4,
                           itemBuilder: (context, index) {
                             return Container(
                               width: 200,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.2),
                                     spreadRadius: 2,
                                     blurRadius: 5,
                                     offset: Offset(0, 3), // changes position of shadow
                                   ),
                                 ],
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 80,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(
                                         topLeft: Radius.circular(10),
                                         topRight: Radius.circular(10),
                                       ),
                                       image: DecorationImage(
                                         image: AssetImage(
                                             'assets/images/productcover.png'), // Replace with your image
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Center(
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [
                                           Text('الاندلس فاشون',
                                               style: TextStyle(
                                                   fontSize: 14,
                                                   fontWeight: FontWeight.bold)),
                                           Text('ملابس الجلديه'),
                                           Row(
                                             //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               Text("تاجر"),
                                               Spacer(),
                                               Text("0"),
                                               Icon(Icons.star,color: Colors.yellowAccent,),



                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             );
                           },
                         ),
                       ],
                     ),
                   ),
                   // List of Popular Items

                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'المزيد',
                               style: TextStyle(
                                 color: Colors.blue,
                                 fontSize: 18,
                                 decoration: TextDecoration.underline,
                               ),
                             ),
                             Text(
                               'المنتجات الأكثر شهرة',
                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                             ),

                           ],
                         ),

                         SizedBox(height: 8),
                         GridView.builder(
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             crossAxisSpacing: 10,
                             mainAxisSpacing: 10,
                           ),
                           itemCount: 4,
                           itemBuilder: (context, index) {
                             return Container(
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.2),
                                     spreadRadius: 2,
                                     blurRadius: 5,
                                     offset: Offset(0, 3), // changes position of shadow
                                   ),
                                 ],
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 100,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(
                                         topLeft: Radius.circular(10),
                                         topRight: Radius.circular(10),
                                       ),
                                       image: DecorationImage(
                                         image: AssetImage(
                                             'assets/images/productcover.png'), // Replace with your image
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('الاندلس فاشون',
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.bold)),
                                         Text('ملابس الجلديه'),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             );
                           },
                         ),
                         SizedBox(height: 70),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
             Positioned(
               bottom: 5,
                 left: 10,
                 right: 10,
                 child:MyCustomNavigatBar()
             ),
           ],
        ),
        //bottomNavigationBar: CustomNavigatBar()
      ),
    );
  }
}
