import 'package:carousel_slider/carousel_slider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/helper/widget_helper.dart';
import 'package:sushi_app/model/product_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: WidgetHelper.entryAnimation(
                          child: ClipRect(
                            child: Icon(Icons.arrow_back,color: Palete.primaryColor,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: WidgetHelper.entryAnimation(
                          child: Container(
                            child: Text('Cart',style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    WidgetHelper.entryAnimation(
                      child: Container(
                        child: Icon(Icons.more_vert,color: Palete.secondaryColor,),
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
                  width: Get.width*.5,
                  child: Container(),
                ),
              ),
              WidgetHelper.entryAnimation(
                delayed: 300,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: Get.width*.5,
                  child: Container()
                ),
              ),
              // SizedBox(height: 32,),

              ///Section 2
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context,index){
                      return WidgetHelper.entryAnimation(
                        delayed: 400+(index*100),
                        child: buildItemList(
                          image: items[index]['image'],
                          subtitle: items[index]['subtitle'],
                          title: items[index]['title'],
                          price: items[index]['price']
                        ),
                      );
                    }
                  ),
                )
              ),

              SizedBox(height: 32,),

              ///Section 3
              WidgetHelper.entryAnimation(
                delayed: 600,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(),
                ),
              ),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 650,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal',),
                      Text('\$24,60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                    ],
                  )
                ),
              ),
              SizedBox(height: 16,),
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',),
                      Text('\$24,60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                    ],
                  )
                ),
              ),
              SizedBox(height: 32,),
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 24),
                  decoration: BoxDecoration(
                    color: Palete.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Place Order',style: TextStyle(color: Colors.white),))
                ),
              ),

              SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
