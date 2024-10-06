import 'package:app_manajemen_umkm/pages/keuangan/keuanganPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LaporanKeuangan extends StatefulWidget {
  const LaporanKeuangan({super.key});

  @override
  State<LaporanKeuangan> createState() => _LaporanKeuanganState();
}

class _LaporanKeuanganState extends State<LaporanKeuangan> {
  DateTime? _selectedDate;
  DateTime? _selectedDate1;

  Future<DateTime> _selectDate(DateTime selectedDate) async {
    DateTime _initialDate = selectedDate;
    final DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (_pickedDate != null) {
      selectedDate = DateTime(
          _pickedDate.year,
          _pickedDate.month,
          _pickedDate.day,
          _initialDate.hour,
          _initialDate.minute,
          _initialDate.second,
          _initialDate.millisecond,
          _initialDate.microsecond);
    }
    return selectedDate;
  }

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
              'Rentang Waktu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            _formLaporan(),
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
            child: Text('Rp 20,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Biaya', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 15,025,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Laba Bersih', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('-Rp 4,975,000', style: TextStyle(fontSize: 18)),
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
            child: Text('Rp 15,025,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Arus Kas Keluar', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Rp 20,000,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Arus Kas Bersih', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('-Rp 4,975,000', style: TextStyle(fontSize: 18)),
          ),
        ]),
      ],
    );
  }

  Widget _formLaporan() {
    return StatefulBuilder(builder: (context, StateSetter setModalState) {
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
                TextButton(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rentang Tanggal Awal",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 16)),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              size: 20.0, color: Colors.black54),
                          SizedBox(width: 5),
                          Text(
                            DateFormat.yMMMEd()
                                .format(_selectedDate ?? DateTime.now()),
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.black54),
                        ],
                      ),
                    ],
                  ),
                  onPressed: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime pickerDate =
                        await _selectDate(_selectedDate ?? DateTime.now());
                    setModalState(() {
                      _selectedDate = pickerDate;
                    });
                  },
                ),
                TextButton(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rentang Tanggal Akhir",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 16)),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              size: 20.0, color: Colors.black54),
                          SizedBox(width: 5),
                          Text(
                            DateFormat.yMMMEd()
                                .format(_selectedDate1 ?? DateTime.now()),
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.black54),
                        ],
                      ),
                    ],
                  ),
                  onPressed: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime pickerDate =
                        await _selectDate(_selectedDate1 ?? DateTime.now());
                    setModalState(() {
                      _selectedDate1 = pickerDate;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Laporan Keuangan"),
                              content: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Laba Rugi"),
                                    SizedBox(height: 5,),
                                    _buildLabaRugiTable(),
                                    SizedBox(height: 20,),
                                    Text("Arus Kas"),
                                    SizedBox(height: 5,),
                                    _buildArusKasTable()
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Oke",
                                      style: TextStyle(color: Colors.amber),
                                    )),
                              ],
                            );
                          });
                    },
                    child: Text(
                      "Cetak",
                      style: TextStyle(color: Colors.amber),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
