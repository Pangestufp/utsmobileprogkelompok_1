import 'package:flutter/material.dart';

class PenjualanPage extends StatefulWidget {
  const PenjualanPage({super.key});

  @override
  State<PenjualanPage> createState() => _PenjualanPageState();
}

class _PenjualanPageState extends State<PenjualanPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.blue,
            child: Column(
              children: [
                Text("Produk"),
                GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.horizontal,
                  children: [

                  ],
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.green,
            child: Column(
              children: [
                Text("Produk Keluar"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
