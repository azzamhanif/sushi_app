
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sushi_app/helper/pallete.dart';
import 'package:sushi_app/view/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> with TickerProviderStateMixin{
  bool _visible = true;
  double dx = 0.0,dy=0.0;


  // late final AnimationController _controller = AnimationController(
  //   duration: const Duration(milliseconds: 4000),
  //   vsync: this,
  // );
  // late final Animation<Offset> _offsetAnimation = Tween<Offset>(
  //   begin: Offset.zero,
  //   end: const Offset(0.0, -50),
  // ).animate(CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.easeInOut,
  // ));
  //
  // late final Animation<Offset> _offsetAnimationDown = Tween<Offset>(
  //   begin: Offset.zero,
  //   end: const Offset(0.0, 50),
  // ).animate(CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.easeInOut,
  // ));


  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  _updateState(){
    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Palete.primaryColor,
                  Palete.gradasiColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: AnimatedOpacity(
          opacity: _visible?1.0:0.0,
          duration: Duration(milliseconds: 500),
          child: Column(
            children: [
              SizedBox(height: Get.height*.2,),

              Entry(
                yOffset: -50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 1000),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset('assets/onboarding.png')
                ),
              ),

              SizedBox(height: 64,),
              Entry(
                yOffset: -50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                delay: Duration(milliseconds: 1000),
                duration: Duration(milliseconds: 1000),
                child: Text('伊那寿司',style: TextStyle(color: Colors.white,fontSize: 40),)),
              SizedBox(height: 16,),
              Entry(
                yOffset: -50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                delay: Duration(milliseconds: 1500),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 64),
                  child: Text('The best fresh sushi delivered straight to your door',
                    style: TextStyle(color: Colors.white,fontSize: 16,),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Entry(
                yOffset: 50,
                opacity: 0,
                curve: Curves.fastOutSlowIn,
                delay: Duration(milliseconds: 1500),
                duration: Duration(milliseconds: 1000),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async{
                      await _updateState();
                      setState(() {
                        _visible = !_visible;
                      });

                      // await Future.delayed(Duration(milliseconds: 500));

                      Get.offNamed('/home');
                    },
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text('Get Started',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
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

