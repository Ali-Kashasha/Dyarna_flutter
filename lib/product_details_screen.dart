import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('تفاصيل المنتج', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image with Play Icon
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/fabrics.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        //width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '(لوجو) شادلي',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Spacer(),
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 4),
                            Text('0', style: TextStyle(color: Colors.white)),

                          ],
                        ),
                      ),
                    ),


                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Product Title
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'مبوش',
                    style: TextStyle(color:Color(0xff7AB2B2),fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                // Product Attributes
                Row(
                  children: [
                    Text(
                      'العرض : ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),

                    Text('160',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                    Spacer(),
                    SizedBox(width: 16),
                    Text(
                      'شكل المنتج : ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    Text('مطبوع',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'وحدة البيع : ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    Text('متر',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                    padding: EdgeInsets.all(12),
width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff7AB2B2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('أقطان', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22))),
                // Product Category and Attributes
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'الموسم : ',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text('صيفي',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                          Spacer(),
                          Text(
                            'النمط : ',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text('خروج',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [

                          Text(
                            'الجنس : ',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text('حريري',style: TextStyle(color:Color(0xff7AB2B2),fontSize: 18),),
                        ],
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: 16),
                Spacer(),
                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text('اتصال'),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text('محادثة'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
