import 'package:flutter_application_1/Models/Get_data.dart';
import 'package:flutter_application_1/Models/ProductModel.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  
  List<ProductModel> product=[];
  bool isloading=false;
  bool isError=false;
  
  get_info()async{
    try {
      isloading=true;
    isError=false;
    update();
    product=await GetData().fetchdata();
    isloading=false;
    update();
    } catch (e) {
      isError=true;
      isloading=false;
      update();
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    get_info();
    super.onInit();
  }
}