import 'package:app_manajemen_umkm/pages/authentication/register.dart';
import 'package:app_manajemen_umkm/pages/bottomNav.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    bool _hintText=true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email"
            ),
          ),
          TextFormField(
            obscureText: _hintText,
            decoration: InputDecoration(
              hintText: "Password"
            ),

          ),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
          }, child: Text("Sign In")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
          }, child: Text("Register"))
        ],
      )),
    );
  }
}
