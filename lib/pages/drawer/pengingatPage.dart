import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PengingatPage extends StatefulWidget {
  const PengingatPage({super.key});

  @override
  State<PengingatPage> createState() => _PengingatPageState();
}

class _PengingatPageState extends State<PengingatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Center(child: Text("Pengingat",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:Colors.white))),
      ),
      body: ListView(
        children: [

          BounceTapper(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.warning_rounded,color: Colors.red,),
                title: Text(
                  "Pembayaran Sabun Putih",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "total : Rp 12.000.000",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "2 hari",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).animate().scale(),
          ),

          BounceTapper(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.warning_rounded,color: Colors.green,),
                title: Text(
                  "Pembayaran Sabun Orange",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "total : Rp 15.000.000",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "7 hari",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).animate().scale(),
          ),

          BounceTapper(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.warning_rounded,color: Colors.green,),
                title: Text(
                  "Pembayaran Sabun Putih",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "total : Rp 6.000.000",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "9 hari",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).animate().scale(),
          ),
        ],
      )
    );
  }
}
