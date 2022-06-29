import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map? mapres;
List? listres;
class Mydata extends StatefulWidget {
  const Mydata({Key? key}) : super(key: key);



  @override
  State<Mydata> createState() => _MydataState();
}

class _MydataState extends State<Mydata> {

  Future apicall() async{
    http.Response responce;
    responce = await http.get(Uri.parse("https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/data.json"));
    setState(() {
      // strres = responce.body;

      mapres = jsonDecode(responce.body);
      listres =mapres!['data'];
    });
  }
@override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Course"),
        elevation: 0,

      ),
        body:  ListView.builder(itemBuilder: (context, index){
              return Column(
              children: [
                Text("Roll No : "+listres![index]['id'].toString()),

                  Text("Full Name : "+listres![index]['first_name'].toString()+" "+listres![index]['last_name'].toString()),

                Image.network(listres![index]['avatar'])


                ],
              );
    },
          itemCount: listres==null?0:listres!.length,
        )
    );
  }
}
