import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PenjualanPage extends StatefulWidget {
  const PenjualanPage({super.key});

  @override
  State<PenjualanPage> createState() => _PenjualanPageState();
}

class _PenjualanPageState extends State<PenjualanPage> {
  List<int> _jumlahProduk = [50, 8, 42, 52, 9, 25];
  List<int> _jumlahProdukawal = [50, 8, 42, 52, 9, 25];
  List<int> _jumlahStockKeluar = [0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Produk",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[0] > 0) {
                                  _jumlahProduk[0] = _jumlahProduk[0] - 1;
                                  _jumlahStockKeluar[0] =
                                      _jumlahStockKeluar[0] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunBiru.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Biru",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[0]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[1] > 0) {
                                  _jumlahProduk[1] = _jumlahProduk[1] - 1;
                                  _jumlahStockKeluar[1] =
                                      _jumlahStockKeluar[1] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunHijau.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Hijau",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[1]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[2] > 0) {
                                  _jumlahProduk[2] = _jumlahProduk[2] - 1;
                                  _jumlahStockKeluar[2] =
                                      _jumlahStockKeluar[2] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunKuning.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Kuning",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[2]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[3] > 0) {
                                  _jumlahProduk[3] = _jumlahProduk[3] - 1;
                                  _jumlahStockKeluar[3] =
                                      _jumlahStockKeluar[3] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunMerah.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Merah",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[3]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[4] > 0) {
                                  _jumlahProduk[4] = _jumlahProduk[4] - 1;
                                  _jumlahStockKeluar[4] =
                                      _jumlahStockKeluar[4] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunOrange.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Orange",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[4]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_jumlahProduk[5] > 0) {
                                  _jumlahProduk[5] = _jumlahProduk[5] - 1;
                                  _jumlahStockKeluar[5] =
                                      _jumlahStockKeluar[5] + 1;
                                }
                              });
                            },
                            child: BounceTapper(
                              child: Card(
                                color: Colors.amber,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(10)),
                                        child: Image.asset(
                                          "assets/images/sabunPutih.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sabun Putih",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Jumlah : ${_jumlahProduk[5]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animate().scale(),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stock Keluar",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        scrollDirection: Axis.horizontal,
                        children: [
                          if (_jumlahStockKeluar[0] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[0] >
                                      _jumlahStockKeluar[0])
                                    _jumlahProduk[0] = _jumlahProduk[0] + 1;
                                  _jumlahStockKeluar[0] =
                                      _jumlahStockKeluar[0] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunBiru.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Biru",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[0]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                          if (_jumlahStockKeluar[1] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[1] >
                                      _jumlahStockKeluar[1])
                                    _jumlahProduk[1] = _jumlahProduk[1] + 1;
                                  _jumlahStockKeluar[1] =
                                      _jumlahStockKeluar[1] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunHijau.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Hijau",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[1]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                          if (_jumlahStockKeluar[2] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[2] >
                                      _jumlahStockKeluar[2])
                                    _jumlahProduk[2] = _jumlahProduk[2] + 1;
                                  _jumlahStockKeluar[2] =
                                      _jumlahStockKeluar[2] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunKuning.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Kuning",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[2]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                          if (_jumlahStockKeluar[3] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[3] >
                                      _jumlahStockKeluar[3])
                                    _jumlahProduk[3] = _jumlahProduk[3] + 1;
                                  _jumlahStockKeluar[3] =
                                      _jumlahStockKeluar[3] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunMerah.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Merah",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[3]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                          if (_jumlahStockKeluar[4] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[4] >
                                      _jumlahStockKeluar[4])
                                    _jumlahProduk[4] = _jumlahProduk[4] + 1;
                                  _jumlahStockKeluar[4] =
                                      _jumlahStockKeluar[4] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunOrange.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Orange",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[4]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                          if (_jumlahStockKeluar[5] > 0)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_jumlahProdukawal[5] >
                                      _jumlahStockKeluar[5])
                                    _jumlahProduk[5] = _jumlahProduk[5] + 1;
                                  _jumlahStockKeluar[5] =
                                      _jumlahStockKeluar[5] - 1;
                                });
                              },
                              child: BounceTapper(
                                child: Card(
                                  color: Colors.amber,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/sabunPutih.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sabun Putih",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Jumlah : ${_jumlahStockKeluar[5]}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animate().scale(),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: BounceTapper(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Masukan data"),
                            content: Container(
                              height: 150,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Nama Pelanggan",
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Alamat Pelanggan",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.amber),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: Container(
                                              height: 250,
                                              color: Colors.amber,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Cetakan ke -1",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Image.asset(
                                                      "assets/images/invoice.png")
                                                ],
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);

                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      SnackBar(
                                                        content: Text("Invoice telah tersimpan"),
                                                        duration: Duration(seconds: 3)
                                                      ),
                                                    );

                                                  },
                                                  child: Text("Selesai",
                                                      style: TextStyle(
                                                          color: Colors.amber)))
                                            ],
                                          );
                                        });
                                  },
                                  child: Text("Oke",
                                      style: TextStyle(color: Colors.amber)))
                            ],
                          );
                        });
                  },
                  child: Card(
                    color: Colors.amber,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cetak Invoice",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.print,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ).animate().scale(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
