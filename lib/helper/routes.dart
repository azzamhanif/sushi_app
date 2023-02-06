import 'package:get/route_manager.dart';
import 'package:sushi_app/view/home_page.dart';
import 'package:sushi_app/view/onboarding_page.dart';

Routes(){
  return[
    GetPage(
      name: '/onboarding',
      page: ()=>OnBoardingPage(),
      transition: Transition.fadeIn
    ),

    GetPage(
      name: '/home',
      page: ()=>HomePage(),
      transition: Transition.fadeIn
    )
  ];
}