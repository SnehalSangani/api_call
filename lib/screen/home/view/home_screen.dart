import 'package:api_call/screen/home/provider/home_provider.dart';
import 'package:api_call/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  Apiprovider? apiproviderfalse;
  Apiprovider? apiprovidertrue;


  @override
  void initState() {
    super.initState();
  Apihelper apihelper = Apihelper();
  apihelper.postapicall();
    Provider.of<Apiprovider>(context,listen: false).Callapi();
  }

  @override
  Widget build(BuildContext context) {

    apiproviderfalse  =    Provider.of<Apiprovider>(context,listen: false);
    apiprovidertrue  =    Provider.of<Apiprovider>(context,listen: true);

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("API"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text("${apiproviderfalse!.Apilist[index].id}"),
            );
          },itemCount: apiproviderfalse!.Apilist.length,),

        ],
      ),

    ),
    );
  }
}
