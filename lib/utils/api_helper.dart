import 'dart:convert';

import 'package:api_call/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class Apihelper
{

  List<dynamic> Apilist=[];
  Future<List> postapicall()
  async {
    String apilinlk="https://fakestoreapi.com/products";
    Uri uri=Uri.parse(apilinlk);
    var response= await http.get(uri);
    var json=jsonDecode(response.body);

    Apilist=json.map((e)=>Apimodel().Apifromjson(e)).toList();
    print(Apilist);
    return Apilist;
  }
}