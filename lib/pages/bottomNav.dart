import 'package:app_manajemen_umkm/pages/beranda/homePage.dart';
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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          print("Floating Action Button di halaman Keuangan ditekan");
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      )
          : null,

    );
  }
}
