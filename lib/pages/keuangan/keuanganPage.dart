import 'package:flutter/material.dart';

class KeuanganPage extends StatefulWidget {
  const KeuanganPage({super.key});

  @override
  State<KeuanganPage> createState() => _KeuanganPageState();
}

class _KeuanganPageState extends State<KeuanganPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset(
                        index == 0
                            ? 'assets/images/pertumbuhanpenjualan.png'
                            : 'assets/images/pengeluaranusaha.png',
                      ),
                    );
                  },
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(_currentIndex==0?"Penjualan":"Pengeluaran"),
                    )),
                if (_currentIndex != 0)
                  Positioned(
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.green,
                      ),
                    ),
                  ),

                if (_currentIndex != 1)
                  Positioned(
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.green,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Card(
              color: Colors.amber,
              elevation: 25,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          Text("Laba Bersih (Bulan)",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("RP.100.000.000", style: TextStyle(fontSize: 15, color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 2,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.monetization_on_rounded, size: 50, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
