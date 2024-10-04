import 'package:app_manajemen_umkm/pages/beranda/homePage.dart';
import 'package:app_manajemen_umkm/pages/inventaris/tambahkanProduk.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InventarisPage extends StatefulWidget {
  const InventarisPage({super.key});

  @override
  State<InventarisPage> createState() => _InventarisPageState();
}

class _InventarisPageState extends State<InventarisPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TambahkanProduk()));
                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.7,
                      child: Card(
                        color: Colors.amber,
                        child: Container(
                            width: 180,
                            height: 160,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/icons/addProduct.png",color: Colors.white,width: 100,),
                                      Text(
                                        "Tambahkan Produk",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ))),
                      ).animate().scale(),
                    ),
                  ),
                  SizedBox(width: 20,),
                  BounceTapper(
                    shrinkScaleFactor: 0.7,
                    child: Card(
                      color: Colors.amber,
                      child: Container(
                          width: 180,
                          height: 160,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/icons/addStock.png",color: Colors.white,width: 100,),
                                    Text(
                                      "Tambahkan Stock",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ))),
                    ).animate().scale(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              children: [
                ListTile(
                  title: Text(
                    "Jumlah total Produk Tersimpan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "20",
                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  title: Text(
                    "Jumlah total stock semua produk",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "1800",
                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  title: Text(
                    "Jumlah stok masuk hari ini",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "200",
                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  title: Text(
                    "Jumlah stok keluar hari ini",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "100", // Tambahkan angka jika ada
                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
