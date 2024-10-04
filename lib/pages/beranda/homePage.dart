import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  final Function(int) changePage;
  HomePage({super.key, required this.changePage});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 30),
              alignment: Alignment.bottomCenter,
              child: LottieBuilder.asset(
                "assets/lotties/backgroundBeranda.json",
                width: MediaQuery.of(context).size.width,
              )),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            color: Colors.amber,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: EdgeInsets.only(left: 20,top: MediaQuery.of(context).size.width / 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pantau Bisnis",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ).animate().fade(),
                        Text(
                          "Raih Sukses",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ).animate().fade(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
              alignment: Alignment.topRight,
              child: LottieBuilder.asset(
                "assets/lotties/orangTerbangberanda.json",
                width: MediaQuery.of(context).size.width/1.6,
              )
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3+20,left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      widget.changePage(1);
                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.8,
                      child: Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.inventory_2_outlined,color: Colors.white,size: 40,),
                                Text("Cek Inventory", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      widget.changePage(3);
                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.8,
                      child: Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 40,),
                                Text("Buat Invoice", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      widget.changePage(2);
                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.8,
                      child: Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.monetization_on_outlined,color: Colors.white,size: 40,),
                                Text("Cacatan Keuangan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.8,
                      child: Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.notification_important_outlined,color: Colors.white,size: 40,),
                                Text("Cek Pembayaran", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
