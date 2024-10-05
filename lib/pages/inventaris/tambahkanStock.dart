import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';

class TambahkanStock extends StatefulWidget {
  const TambahkanStock({super.key});

  @override
  State<TambahkanStock> createState() => _TambahkanStockState();
}

class _TambahkanStockState extends State<TambahkanStock> {
  bool? isPaid = false;
  DateTime? _selectedDate;
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
  void initState() {
    // TODO: implement initState
    _selectedDate = DateTime.now();
    super.initState();
  }


  void _editStock(String name) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
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
                  Center(child: Text("Edit Stock "+name,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Jumlah Produk",
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Cacatan",
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
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Edit Stock",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _addStock(String name) {
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
                      Center(child: Text("Tambahkan Stock "+name,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Jumlah Produk",
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
                      SizedBox(height: 10,),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: "Cacatan",
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
                      Text("Status Pembayaran : "),
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
                              Text("Lunas"),
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
                              Text("Belum Lunas"),
                            ],
                          ),
                        ],
                      ),
                      if (isPaid == false)
                        TextButton(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tanggal jatuh tempo pembayaran", style: TextStyle(color: Colors.black54, fontSize: 16)),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, size: 20.0, color: Colors.black54),
                                  SizedBox(width: 5),
                                  Text(
                                    DateFormat.yMMMEd().format(_selectedDate ?? DateTime.now()),
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                                ],
                              ),
                            ],
                          ),
                          onPressed: () async {
                            FocusScope.of(context).requestFocus(FocusNode());
                            DateTime pickerDate = await _selectDate(_selectedDate ?? DateTime.now());
                            setModalState(() {
                              _selectedDate = pickerDate;
                            });
                          },
                        ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Tambahkan Stock", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
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
      appBar: AppBar(
        title: Center(
            child: Text(
              "Tambahkan Stock",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Biru");
              },
              onLongPress: () {
                _editStock("Sabun Biru");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunBiru.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Biru",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Biru",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 50",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Hijau");
              },
              onLongPress: () {
                _editStock("Sabun Hijau");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunHijau.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Hijau",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Hijau",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 8",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Kuning");
              },
              onLongPress: () {
                _editStock("Sabun Kuning");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunKuning.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Kuning",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Kuning",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 42",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Merah");
              },
              onLongPress: () {
                _editStock("Sabun Merah");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunMerah.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Merah",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Merah",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 52",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Orange");
              },
              onLongPress: () {
                _editStock("Sabun Orange");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunOrange.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Orange",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Orange",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 9",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

          BounceTapper(
            child: GestureDetector(
              onTap: () {
                _addStock("Sabun Putih");
              },
              onLongPress: () {
                _editStock("Sabun Putih");
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/sabunPutih.jpg",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    "Sabun Putih",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Produk Sabun warna Putih",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "Stok: 25",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ).animate().scale(),
            ),
          ),

        ],
      ),
    );
  }
}
