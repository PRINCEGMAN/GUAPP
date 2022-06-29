import 'package:flutter/material.dart';
import 'package:gu/data.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // ignore: unnecessary_const
  static const color = const Color(0xFF004AAD);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("GU INFO"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: color,
          leading: Icon(Icons.menu,size: 30,),

        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*1,
              color: Colors.white,
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.40,
                      // height: MediaQuery.of(context).size.height*0.05,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Mydata()));
                            },
                            child: Text("Course",style: TextStyle(fontSize: 22,color:Colors.white,)
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: color,

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.40,
                      // height: MediaQuery.of(context).size.height*0.05,
                      child: Column(
                        children: [
                          Text("About",style: TextStyle(fontSize: 22,color: Colors.white),)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color:color,

                      ),

                    ),
                  ),

                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: Text("Tools",style: TextStyle(
                    fontSize: 18,

                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:25.0),
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.4,
                    color: color,

                  ),
                  SizedBox(width: 50,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.4,
                    color: Colors.black,

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.4,
                    color: color,

                  ),
                ],

              ),
            )
          ],

        )

    );
  }
}
