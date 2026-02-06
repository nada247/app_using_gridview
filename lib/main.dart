import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<String> itemList = [
    "assets/images/style.jpg",
    "assets/images/s4.jpg",
    "assets/images/s3.jpg",
    "assets/images/s2.jpg",
    "assets/images/s5.jpg",
    "assets/images/s7.jpg",
    "assets/images/s8.jpg",
    "assets/images/s9.png",
    "assets/images/s10.png",
    "assets/images/s6.webp",
    "assets/images/s11.webp",
    "assets/images/style.jpg",
    "assets/images/s4.jpg",
    "assets/images/s3.jpg",
    "assets/images/s2.jpg",
    "assets/images/s5.jpg",
    "assets/images/s7.jpg",
    "assets/images/s8.jpg",
    "assets/images/s9.png",
    "assets/images/s10.png",
    "assets/images/s6.webp",
    "assets/images/s11.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Center(child: Text("Home" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
          elevation: 0,
          leading: Icon(Icons.menu , color: Colors.white,),
          actions: [
            Container(
              height: 36,
              width: 35,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("0" , style: TextStyle(color: Colors.white),)),
            )
          ],),

        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child:
            Column(
              children: [
                Container(
                  height: 250,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/s11.webp' ), fit: BoxFit.cover)
                  ),
                  child: Container(
                    height: 250,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            colors: [Colors.grey.withOpacity(.6) , Colors.grey.withOpacity(.3)])
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("LifeStyle Sale" , style: TextStyle(color: Colors.white , fontSize: 35 , fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 60 , vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),child: Text("Shop Now" , style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                ),
                //===========================================================
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: itemList.map((item) => Card(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(item) , fit: BoxFit.cover)
                        ),
                        child: Transform.translate(
                          offset: Offset(50 , -50),
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.symmetric(vertical: 55 , horizontal: 60),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),

                            ),child: Icon(Icons.bookmark_border , color: Colors.black,),
                          ),
                        ),
                      ),
                    )).toList(),

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
