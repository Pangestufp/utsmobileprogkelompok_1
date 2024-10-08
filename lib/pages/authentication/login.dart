import 'package:app_manajemen_umkm/pages/authentication/register.dart';
import 'package:app_manajemen_umkm/pages/beranda/homePage.dart';
import 'package:app_manajemen_umkm/pages/bottomNav.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _hintText = true;
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
              padding: EdgeInsets.only(top: 100, left: 60, right: 60),
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/tanpaBgLogo.png",
                    width: 200,
                  ).animate().fade(duration: Duration(seconds: 3)),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                      child: Column(
                    children: [
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
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1)),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1)),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value) {
                                      if (value!.contains("@") &&
                                          value!.endsWith(".com")) {
                                        return null;
                                      }
                                      return 'Email tidak sesuai';
                                    }).animate().scale(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BounceTapper(
                                child: TextFormField(
                                    obscureText: _hintText,
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(color: Colors.amber),
                                        labelStyle:
                                            TextStyle(color: Colors.amber),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1)),
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
                                    }).animate().scale(),
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
                                    "Sign In",
                                    style: TextStyle(color: Colors.amber),
                                  )).animate().scale(),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.amber),
                          )).animate().scale(),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
