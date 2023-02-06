import 'package:carousel_slider/carousel_slider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/helper/widget_helper.dart';
import 'package:sushi_app/model/product_model.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                            child: Text('Payment',style: TextStyle(fontSize: 20),),
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
              SizedBox(height: 16,),

              ///Section 2
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetHelper.entryAnimation(
                          delayed: 300,
                          child: Text('Address',style: TextStyle(fontSize: 16,color: Palete.primaryColor,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 4,),
                        WidgetHelper.entryAnimation(
                          delayed: 350,
                          child: Text('Jl, Taman Harapan Baru, Pejuang, Medan Satria, Bekasi, Indonesia, 17131',style: TextStyle(fontSize: 14,color: Palete.secondaryColor,),)),
                        SizedBox(height: 16,),
                        WidgetHelper.entryAnimation(
                          delayed: 400,
                          child: Text('Payment Method',style: TextStyle(fontSize: 16,color: Palete.primaryColor,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 32,),
                        WidgetHelper.entryAnimation(
                          delayed: 450,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/mastercard.png',width: 50,height: 40,),
                                SizedBox(width: 16,),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('MasterCard',style: TextStyle(fontSize: 14,color: Palete.primaryColor,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 4,),
                                          Text('******244',style: TextStyle(color: Palete.secondaryColor.withOpacity(.5)),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Palete.accentColor,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.chevron_right,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 128,),

                        WidgetHelper.entryAnimation(
                          delayed: 500,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Shipping Cost',),
                                  Text('\$10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                ],
                              )
                          ),
                        ),

                        SizedBox(height: 16,),
                        WidgetHelper.entryAnimation(
                          delayed: 550,
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
                        SizedBox(height: 32,),
                        WidgetHelper.entryAnimation(
                          delayed: 600,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total',),
                                  Text('\$34,60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                ],
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ),

              // SizedBox(height: 32,),

              ///Section 3
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 24),
                    decoration: BoxDecoration(
                      color: Palete.accentColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Palete.accentColor,)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.verified_outlined,color: Palete.accentColor,),
                            SizedBox(width: 16,),
                            Text('Add Voucher',style: TextStyle(color: Palete.accentColor,),),
                          ],
                        ))
                ),
              ),

              SizedBox(height: 16,),
              WidgetHelper.entryAnimation(
                delayed: 700,
                child: InkWell(
                  onTap: (){
                    Get.toNamed('/order_done');
                  },
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
              ),

              SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
