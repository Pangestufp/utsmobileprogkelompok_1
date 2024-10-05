import 'package:app_manajemen_umkm/pages/keuangan/keuanganPage.dart';
import 'package:flutter/material.dart';

class Laporan extends StatefulWidget {
  const Laporan({super.key});

  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Laporan Keuangan",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laporan Laba Rugi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildLabaRugiTable(),
            const SizedBox(height: 40),
            const Text(
              'Arus Kas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildArusKasTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildLabaRugiTable() {
    return Table(
      border: TableBorder.all(),
      children: const [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Pendapatan', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 10,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Biaya', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 5,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Laba Bersih', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 5,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
      ],
    );
  }

  Widget _buildArusKasTable() {
    return Table(
      border: TableBorder.all(),
      children: const [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Arus Kas Masuk', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 8,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),

        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Arus Kas Keluar', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 3,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),

        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Arus Kas Bersih', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 5,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),

      ],
    );
  }
}
