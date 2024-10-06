import 'package:app_manajemen_umkm/pages/bottomNav.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _hintText = true;
  bool _hintText2 = true;
  TextEditingController _password = TextEditingController();
  TextEditingController _password2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox.expand(
            child: LottieBuilder.asset(
              "assets/lotties/backgroundLogin.json",
              fit: BoxFit.cover,
              repeat: true,
              reverse: true,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 60, right: 60),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: LottieBuilder.asset(
                        "assets/lotties/logoSignUp.json",
                        width: 200,
                      ),
                    ),
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                    children: [
                      BounceTapper(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.amber),
                            labelStyle: TextStyle(color: Colors.amber),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                            validator: (value) {
                              if (value!.contains("@") &&
                                  value!.endsWith(".com")) {
                                return null;
                              }
                              return 'Email tidak sesuai';
                            }
                        ).animate().scale(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BounceTapper(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Nama Toko',
                            hintStyle: TextStyle(color: Colors.amber),
                            labelStyle: TextStyle(color: Colors.amber),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "Nama toko tidak boleh kosong";
                              }
                              return null;
                            }
                        ).animate().scale(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BounceTapper(
                        child: TextFormField(
                          obscureText: _hintText,
                          controller: _password,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.amber),
                            labelStyle: TextStyle(color: Colors.amber),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            fillColor: Colors.white,
                            filled: true,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _hintText ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _hintText = !_hintText;
                                  });
                                },
                              )
                          ),
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'Password tidak boleh Kosong';
                              }
                              return null;
                            }
                        ).animate().scale(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BounceTapper(
                        child: TextFormField(
                          controller: _password2,
                          obscureText: _hintText2,
                          decoration: InputDecoration(
                            hintText: 'Konfirmasi Password',
                            hintStyle: TextStyle(color: Colors.amber),
                            labelStyle: TextStyle(color: Colors.amber),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                            fillColor: Colors.white,
                            filled: true,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _hintText2 ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.amber,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _hintText2 = !_hintText2;
                                  });
                                },
                              )
                          ),
                            validator: (value) {
                              if (_password2.text != _password.text) {
                                return 'Konfirmasi salah';
                              }
                              return null;
                            }
                        ).animate().scale(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNav()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.amber),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

