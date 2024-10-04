import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TambahkanStock extends StatefulWidget {
  const TambahkanStock({super.key});

  @override
  State<TambahkanStock> createState() => _TambahkanStockState();
}

class _TambahkanStockState extends State<TambahkanStock> {


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

  void _createOrUpdateItem() {
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
                  Center(child: Text("Tambahkan Stock",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nama Produk",
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
                        if (value!.isEmpty || value == null) {
                          return "Nama produk tidak boleh kosong";
                        }
                        return null;
                      }),
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Deskripsi Produk",
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
                        if (value!.isEmpty || value == null) {
                          return "Deskripsi produk tidak boleh kosong";
                        }
                        return null;
                      }),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Harga Beli Produk",
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
                        return "Harga Beli tidak boleh kosong";
                      }
                      if (!RegExp(r'^[1-9][0-9]*$').hasMatch(value)) {
                        return "Hanya angka bulat positif yang diperbolehkan";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Harga Jual Produk",
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
                        return "Harga jual tidak boleh kosong";
                      }
                      if (!RegExp(r'^[1-9][0-9]*$').hasMatch(value)) {
                        return "Hanya angka bulat positif yang diperbolehkan";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Tambahkan",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
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
                onTap: () {
                  _createOrUpdateItem();
                },
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
                onTap: () {
                  _createOrUpdateItem();
                },
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
                onTap: () {
                  _createOrUpdateItem();
                },
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
                onTap: () {
                  _createOrUpdateItem();
                },
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
                onTap: () {
                  _createOrUpdateItem();
                },
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
                onTap: () {
                  _createOrUpdateItem();
                },
              ),
            ).animate().scale(),
          ),

        ],
      ),
    );
  }
}
