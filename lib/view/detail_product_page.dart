import 'package:carousel_slider/carousel_slider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/helper/widget_helper.dart';
import 'package:sushi_app/model/product_model.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  late ProductModel item;
  var qty = 1;
  var amount = 0.0;


  @override
  void initState() {
    setState((){
      item = ProductModel(
          image: Get.arguments['data'].image,
          subtitle: Get.arguments['data'].subtitle,
          title: Get.arguments['data'].title,
          price: Get.arguments['data'].price);

      amount = double.parse(item.price.toString());
    });

    super.initState();
  }

  Widget buildProdukItem({image,title,subtitle,price}){
    return InkWell(
      onTap: (){
        Get.toNamed('/detail',arguments: {'image':image});
      },
      child: Container(
        width: Get.width*.4,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'imageProduk_'+Get.arguments['image'],
              child: ClipRect(
                child: Image.asset(Get.arguments['image'],height: 100,),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              child: Hero(
                tag: 'imageProduk_'+image,
                child: ClipRect(
                  child: Image.asset(image),
                ),
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
          child: SingleChildScrollView(
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
                              child: Text('Detail',style: TextStyle(fontSize: 20),),
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
                    child: Text(item.subtitle.toString(),style: TextStyle(color: Palete.accentColor,fontSize: 16),),
                  ),
                ),
                WidgetHelper.entryAnimation(
                  delayed: 300,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: Get.width*.5,
                    child: Text(item.title.toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 32,),

                ///Section 2

                Container(
                  margin: EdgeInsets.only(left: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetHelper.entryAnimation(
                        delayed: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('assets/avocado.png',width: 40,),
                              Text('Avocado',style: TextStyle(fontSize: 12,color: Palete.secondaryColor),),
                              SizedBox(height: 32,),
                              Image.asset('assets/rice.png',width: 40,),
                              Text('Rice',style: TextStyle(fontSize: 12,color: Palete.secondaryColor)),
                              SizedBox(height: 32,),
                              Image.asset('assets/salmon.png',width: 40,),
                              Text('Salmon',style: TextStyle(fontSize: 12,color: Palete.secondaryColor)),
                              SizedBox(height: 32,),
                            ],
                          ),
                        ),
                      ),
                      Hero(
                        tag: 'imageProduk_'+item.image.toString(),
                        child: ClipRect(
                          child: Image.asset(item.image.toString(),height: 200,),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 32,),

                ///Section 3
                WidgetHelper.entryAnimation(
                  delayed: 600,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('\$'+amount.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),

                        IconButton(
                          onPressed: (qty < 2)
                            ? null
                            :(){
                              setState(() {
                                qty -= 1;
                                amount = double.parse(item.price.toString()) * qty;

                              });
                            },
                          icon: Icon(Icons.remove)
                        ),
                        Text(qty.toString(),style: TextStyle(fontSize: 20),),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              qty+=1;
                              amount = double.parse(item.price.toString()) * qty;

                            });
                          },
                          icon: Icon(Icons.add)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                WidgetHelper.entryAnimation(
                  delayed: 650,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Description',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                ),
                SizedBox(height: 8,),
                WidgetHelper.entryAnimation(
                  delayed: 700,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',style: TextStyle(fontSize: 14,),)
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
                      child: Text('Buy Now',style: TextStyle(color: Colors.white),))
                  ),
                ),

                SizedBox(height: 32,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
