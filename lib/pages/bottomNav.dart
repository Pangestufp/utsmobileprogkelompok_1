import 'package:app_manajemen_umkm/pages/beranda/homePage.dart';
import 'package:app_manajemen_umkm/pages/drawer/leftDrawer.dart';
import 'package:app_manajemen_umkm/pages/inventaris/inventarisPage.dart';
import 'package:app_manajemen_umkm/pages/keuangan/keuanganPage.dart';
import 'package:app_manajemen_umkm/pages/penjualan/penjualanPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool? isPaid=true;
  int _currentIndex = 0;
  List<Widget> _listPages = [];
  List<String> _listNamePages = [];

  Widget? _currentPage;
  String? _currentNamePage;

  late HomePage homePage;
  late InventarisPage inventarisPage;
  late PenjualanPage penjualanPage;
  late KeuanganPage keuanganPage;

  @override
  void initState() {
    // TODO: implement initState

    homePage = HomePage(changePage: _changePage,);
    inventarisPage = InventarisPage();
    penjualanPage = PenjualanPage();
    keuanganPage = KeuanganPage();

    _listPages = [homePage, inventarisPage,keuanganPage,penjualanPage];
    _listNamePages = ["Beranda", "Inventaris", "Keuangan", "Penjualan"];
    _currentPage = homePage;
    _currentNamePage = "Beranda";

    super.initState();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
      _currentNamePage = _listNamePages[selectedIndex];
    });
  }

  void _addCacatan() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, StateSetter setModalState) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text("Tambahkan cacatan",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                        Text("Jenis cacatan : "),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio<bool>(
                                  value: true,
                                  groupValue: isPaid,
                                  onChanged: (value) {
                                    setModalState(() {
                                      isPaid = value;
                                    });
                                  },
                                ),
                                Text("Pengeluaran"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio<bool>(
                                  value: false,
                                  groupValue: isPaid,
                                  onChanged: (value) {
                                    setModalState(() {
                                      isPaid = value;
                                    });
                                  },
                                ),
                                Text("Pemasukan"),
                              ],
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Isi cacatan",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            focusedErrorBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Jumlah",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                            focusedErrorBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.amber, width: 1)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Jumlah tidak boleh kosong";
                            }
                            if (!RegExp(r'^[1-9][0-9]*$').hasMatch(value)) {
                              return "Hanya angka bulat positif yang diperbolehkan";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Tambahkan Cacatan", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:Colors.amber,
        title: Center(
          child: Text(
            "${_currentNamePage}",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:Colors.white),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: _currentPage,
          )),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 50,
        color: Colors.amber,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 500),
        items: [
          Icon(
            _currentIndex == 0
                ? Icons.home
                : Icons.home_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            _currentIndex == 1
                ? Icons.inventory
                : Icons.inventory_2_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            _currentIndex == 2
                ? Icons.monetization_on
                : Icons.monetization_on_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            _currentIndex == 3
                ? Icons.shopping_cart
                : Icons.shopping_cart_outlined,
            size: 40,
            color: Colors.white,
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),

      floatingActionButton: _currentIndex == 2
          ? FloatingActionButton(
        onPressed: () {
          _addCacatan();
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.add,color: Colors.white,),
      )
          : null,
      drawer: _currentIndex==0? LeftDrawer():null,
    );
  }
}
