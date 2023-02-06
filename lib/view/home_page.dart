import 'package:carousel_slider/carousel_slider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/helper/widget_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget buildProdukItem({image,title,subtitle,price}){
    return Container(
      width: Get.width*.4,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 200,
            child: ClipRect(
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 16,),
          Text(subtitle,style: TextStyle(color: Palete.accentColor),),
          Text(title,style: TextStyle(color: Palete.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(

                text: TextSpan(
                  style: TextStyle(color: Palete.primaryColor,),
                  text: '\$ ',
                  children: [
                    TextSpan(text: price,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palete.primaryColor
                ),
                child: Icon(Icons.add,color: Colors.white,size: 15,),
              )
            ],
          )
        ],
      ),
    );
  }

  List<dynamic> items = [
    {
      'image': 'assets/sushi_1.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '8,30'
    },
    {
      'image': 'assets/sushi_2.png',
      'subtitle': 'Nori Naki',
      'title': 'Kamikaze Salmon',
      'price': '9,30'
    },
    {
      'image': 'assets/sushi_3.png',
      'subtitle': 'Nori Naki',
      'title': 'Crunch Chicken',
      'price': '7,00'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: WidgetHelper.entryAnimation(
                            child: ClipRect(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palete.primaryColor
                                ),
                                child: Icon(Icons.person,color: Colors.white,)),
                            ),
                          ),
                        ),
                      ),
                      WidgetHelper.entryAnimation(
                        child: Container(
                          child: Icon(Icons.search,color: Palete.secondaryColor,),
                        ),
                      ),
                      SizedBox(width: 16,),
                      WidgetHelper.entryAnimation(
                        child: Container(
                          child: Icon(Icons.menu,color: Palete.secondaryColor,),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 32,),
                ///First Section
                WidgetHelper.entryAnimation(
                  delayed: 300,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: Get.width*.6,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Palete.primaryColor,fontSize: 28),
                        text: 'What would you like ',
                        children: [
                          TextSpan(
                            text: 'to order?',
                            style: TextStyle(fontWeight: FontWeight.bold)
                          )
                        ]
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32,),

                ///Section 2
                WidgetHelper.entryAnimation(
                  delayed: 400,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(height: 4,),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Palete.primaryColor
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 16,),
                        Text('Sushi',style: TextStyle(color: Palete.secondaryColor),),
                        SizedBox(width: 16,),
                        Text('Rameon',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Kimchi',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Karage',style: TextStyle(color: Palete.secondaryColor)),
                        SizedBox(width: 16,),
                        Text('Sashimi',style: TextStyle(color: Palete.secondaryColor)),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 32,),

                WidgetHelper.entryAnimation(
                  delayed: 500,
                  child: Container(
                    child: CarouselSlider(
                      items: items.map(
                            (item) => buildProdukItem(
                                image: item['image'],
                                subtitle: item['subtitle'],
                                title: item['title'],
                                price: item['price'])).toList(),
                      options: CarouselOptions(
                        height: 280,
                        // autoPlay: true,
                        viewportFraction: .5,
                        aspectRatio: 3,
                        enlargeCenterPage: true,
                        // aspectRatio: MediaQuery.of(context).size.height/MediaQuery.of(context).size.width
                      ),
                    ),
                  ),
                ),

                ///Section 3
                WidgetHelper.entryAnimation(
                  delayed: 600,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Special for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                ),
                SizedBox(height: 16,),
                WidgetHelper.entryAnimation(
                  delayed: 650,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        color: Palete.secondaryColor.withOpacity(.2),
                        blurRadius: 30,
                        offset: Offset(-2, 10)
                      )]
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/sushi_1.png',height: 80,),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(fontSize: 14,color: Palete.primaryColor),
                                  text: 'Only today ',
                                  children: [
                                    TextSpan(text: '25% off',style: TextStyle(fontWeight: FontWeight.bold))
                                  ]
                                )
                              ),
                              SizedBox(height: 4,),
                              Text('Nori Naki',style: TextStyle(fontSize:12,color: Palete.accentColor),),
                              Text('Kamikaze Salmon',style: TextStyle(fontSize:12,color: Palete.primaryColor,),),
                              SizedBox(height: 8,),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontSize: 14,color: Colors.red,decoration: TextDecoration.lineThrough),
                                      text: '~\$8,30~',
                                      children: [
                                        TextSpan(text: ' \$6,22',style: TextStyle(decoration: TextDecoration.none,color: Palete.primaryColor))
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right,color: Palete.secondaryColor,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
