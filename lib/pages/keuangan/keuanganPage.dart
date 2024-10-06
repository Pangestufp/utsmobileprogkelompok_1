import 'package:app_manajemen_umkm/pages/authentication/login.dart';
import 'package:app_manajemen_umkm/pages/keuangan/laporanKeuangan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
    return  Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
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
                  child: Text(_currentIndex == 0 ? "Penjualan" : "Pengeluaran"),
                ),
              ),
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
        ).animate().scale(),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
          child: Card(
            color: Colors.amber,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Laba Bersih Bulan ini",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text(
                            "- Rp 4.975.000",
                            style: TextStyle(fontSize: 15, color: Colors.red,fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 2,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaporanKeuangan()),
                            );
                          },
                          child: Icon(
                            Icons.monetization_on_rounded,
                            size: 50,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ).animate().scale(),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: Text("Pengeluaran"),
                subtitle: Text("Perbaikan Mesin cetak sabun"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 8.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/spending.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pendapatan"),
                subtitle: Text("Penjualan Ke customer 30012345"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 2.300.000"),
                  ],
                ),
                leading: Image.asset("assets/images/profit.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pendapatan"),
                subtitle: Text("Penjualan Ke customer 20012345"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 2.700.000"),
                  ],
                ),
                leading: Image.asset("assets/images/profit.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pendapatan"),
                subtitle: Text("Kerjasama dengan Retailer"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 10.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/profit.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pendapatan"),
                subtitle: Text("Penjualan ke pelanggan-10012345"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 25.000"),
                  ],
                ),
                leading: Image.asset("assets/images/profit.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pengeluaran"),
                subtitle: Text("Pembelian plastik pembungkus"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 2.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/spending.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pengeluaran"),
                subtitle: Text("Biaya Sewa"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("01/10/2024"),
                    Text("Rp. 10.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/spending.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pengeluaran"),
                subtitle: Text("Biaya Asuransi: "),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("30/09/2024"),
                    Text("Rp. 3.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/spending.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Pengeluaran"),
                subtitle: Text("Gaji Karyawan"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("30/09/2024"),
                    Text("Rp. 9.000.000"),
                  ],
                ),
                leading: Image.asset("assets/images/spending.png"),
              ).animate().fade(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(height: 40,)
            ],
          ),
        )
      ],
    );
  }
}