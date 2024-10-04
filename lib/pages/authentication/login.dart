import 'package:app_manajemen_umkm/pages/authentication/register.dart';
import 'package:app_manajemen_umkm/pages/beranda/homePage.dart';
import 'package:app_manajemen_umkm/pages/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    bool _hintText = true;
    return Scaffold(
      backgroundColor: Colors.amber,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: LottieBuilder.asset(
              "assets/lotties/backgroundLogin.json",
              fit: BoxFit.cover,// memastikan background menutupi seluruh layar
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 300, left: 60, right: 60),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.amber),
                      labelStyle: TextStyle(color: Colors.amber),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      fillColor: Colors.white, // Warna background
                      filled: true, // Mengaktifkan background
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: _hintText,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.amber),
                      labelStyle: TextStyle(color: Colors.amber),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black, width: 1)),
                      fillColor: Colors.white, // Warna background
                      filled: true, // Mengaktifkan background
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => BottomNav()));
                      },
                      child: Text("Sign In", style: TextStyle(color: Colors.amber),)),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Register()));
                      },
                      child: Text("Sign up",style: TextStyle(color: Colors.amber),))
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset("assets/icons/icon moporg fix.png")
                .animate()
                .fade(duration: Duration(seconds: 3)),
          )
        ],
      ),
    );
  }
}

// child: TextFormField(
// obscureText: _showHide,
// controller: _password,
// style: TextStyle(color: Colors.white),
// decoration: InputDecoration(
// hintText: 'Password',
// hintStyle: TextStyle(color: Colors.white),
// labelStyle: TextStyle(color: Colors.white),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: BorderSide(color: Colors.white, width: 1)),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: BorderSide(color: Colors.white, width: 1)),
// errorBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: BorderSide(color: Colors.white, width: 1)),
// focusedErrorBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
// borderSide: BorderSide(color: Colors.white, width: 1)),
// suffixIcon: IconButton(
// icon: Icon(
// _showHide ? Icons.visibility_off : Icons.visibility,
// color: Colors.white,
// ),
// onPressed: () {
// setState(() {
// _showHide = !_showHide;
// });
// },
// ),
// ),
// autofocus: false,
// validator: (value) {
// if (value!.isEmpty || value == null) {
// return 'Password tidak boleh Kosong';
// }
// return null;
// },
// ),
