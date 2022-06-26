import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("GU INFO"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*1,
              color: Colors.white,
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.30,
                      // height: MediaQuery.of(context).size.height*0.05,
                      child: Column(
                        children: [
                           Text("HOME",style: TextStyle(fontSize: 22,color: Colors.white),)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.green,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.30,
                      // height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                          color: Colors.blueAccent,
                                            
                      ),
                      child: Column(
                        children: [
                          Text("Tools",style: TextStyle(fontSize: 22,color: Colors.white),)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.30,
                      // height: MediaQuery.of(context).size.height*0.05,
                      child: Column(
                        children: [
                          Text("About",style: TextStyle(fontSize: 22,color: Colors.white),)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.blueAccent,

                      ),

                    ),
                  ),

                ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            )
          ],
        )

    );
  }
}
