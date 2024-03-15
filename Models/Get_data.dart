import 'dart:convert';

import 'package:flutter_application_1/Models/ProductModel.dart';
import 'package:http/http.dart' as http;
class GetData {
 Future<List<ProductModel>> fetchdata()async{
    try {
      final respon=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    // print(respon.body);
    
    List data=json.decode(respon.body);
    List<ProductModel> models=data.map((element) => ProductModel.fromJson(element)).toList();
    print("rest api maglumat aldy");
    return models;
    } catch (e) {
      throw Exception(e);
    }
  }
}