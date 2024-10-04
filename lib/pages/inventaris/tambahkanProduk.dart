import 'dart:io';
import 'package:app_manajemen_umkm/pages/authentication/login.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';

class TambahkanProduk extends StatefulWidget {
  const TambahkanProduk({super.key});

  @override
  State<TambahkanProduk> createState() => _TambahkanProdukState();
}

class _TambahkanProdukState extends State<TambahkanProduk> {
  File? _image;
  bool _edit = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
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
                  Center(child: Text(_edit == true ? "Ubah Item" : "Tambahkan",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
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
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber, width: 2)),
                        child: _image == null
                            ? Center(
                                child: Text(
                                "Tidak ada gambar yang dipilih",
                                style: TextStyle(color: Colors.grey),
                              ))
                            : Image.file(_image!)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Submit'),
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
          "Tambahkan Produk",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Material(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.amber,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 8,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      _edit = false;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      shrinkScaleFactor: 0.8,
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          width: 300,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tambahkan Produk ",
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 18),
                              ),
                              Icon(
                                Icons.add_circle_outlined,
                                color: Colors.amber,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ).animate().scale(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 8),
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunBiru.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Biru",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunHijau.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Hijau",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunKuning.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Kuning",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunMerah.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Merah",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunOrange.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Orange",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _edit = true;
                      _createOrUpdateItem();
                    },
                    child: BounceTapper(
                      child: Card(
                        color: Colors.amber,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/sabunPutih.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sabun Putih",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().scale(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
