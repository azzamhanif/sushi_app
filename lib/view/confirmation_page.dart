import 'package:carousel_slider/carousel_slider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/helper/widget_helper.dart';
import 'package:sushi_app/model/product_model.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  late ProductModel item;
  var qty = 1;
  var amount = 0.0;


  @override
  void initState() {

    super.initState();
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

  Widget buildItemList({image,title,price,subtitle}){

    return Container(
      margin: EdgeInsets.only(left: 16,right: 16,bottom: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(image,height: 65,),
          ),
          SizedBox(width: 24,),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtitle,style: TextStyle(color: Palete.accentColor),),
                    Text(title,style: TextStyle(color: Palete.primaryColor,fontSize: 14),),
                    SizedBox(height: 8,),
                    Text('\$'+price,style: TextStyle(color: Palete.primaryColor,fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('1'),
                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palete.primaryColor
                  ),
                  child: Icon(Icons.add,color: Colors.white,size: 10,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetHelper.entryAnimation(
                child: Icon(Icons.verified_outlined,color: Palete.accentColor,size: 100,)),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 300,
                child: Text('Congratulation!',style: TextStyle(fontSize: 32,color: Palete.accentColor),)),
              SizedBox(height: 4,),
              WidgetHelper.entryAnimation(
                delayed: 350,
                child: Text('your order is being processed',style: TextStyle(fontSize: 16,color: Palete.accentColor),)),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 400,
                child: InkWell(
                  onTap: (){
                    Get.offAllNamed('/home');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 64),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Palete.accentColor.withOpacity(.15),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.chevron_right,color: Palete.accentColor,size: 32,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
