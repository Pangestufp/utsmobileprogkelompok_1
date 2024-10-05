import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.amber,
          title: Center(child: Text("Invoice",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:Colors.white))),
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
                  title: Text(
                    "Invoice -1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Image.asset("assets/images/invoice.png")
                ),
              ).animate().scale(),
            ),
          ],
        )
    );;
  }
}
