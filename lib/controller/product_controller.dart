import 'package:get/get.dart';
import 'package:sushi_app/model/product_model.dart';

class ProductController extends GetxController{
  ProductModel productModel = ProductModel();
  RxList<dynamic> items = [].obs;


}