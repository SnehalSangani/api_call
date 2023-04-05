import 'package:api_call/utils/api_helper.dart';
import 'package:flutter/widgets.dart';

class Apiprovider extends ChangeNotifier
{
  List Apilist=[];
  Apihelper apihelper=Apihelper();
  Future<void> Callapi()
  async {
    Apilist=await apihelper.postapicall();
    notifyListeners();
  }
}