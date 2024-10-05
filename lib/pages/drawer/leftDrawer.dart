import 'package:app_manajemen_umkm/pages/authentication/login.dart';
import 'package:app_manajemen_umkm/pages/drawer/Invoice.dart';
import 'package:app_manajemen_umkm/pages/drawer/pengingatPage.dart';
import 'package:flutter/material.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text(
              "Kelompok 1",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            accountEmail: Text("Kelompok1.@Gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54)),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.amber,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/drawerGambar.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MenuList(),
        ],
      ),
    );
  }

  Widget MenuList() {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.notification_important,
            color: Colors.amber,
            size: 40,
          ),
          trailing: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          title: Text("Pengingat"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PengingatPage()));
          },
        ),
        Divider(color: Colors.amber,),
        ListTile(
          leading: Icon(
            Icons.save_alt,
            color: Colors.amber,
            size: 40,
          ),
          title: Text("Invoice"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Invoice()));
          },
        ),
        Divider(color: Colors.amber,),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.amber,
            size: 40,
          ),
          title: Text("Setting"),
          onTap: () {},
        ),
        Divider(color: Colors.amber,),
        ListTile(
          leading: Icon(
            Icons.logout_sharp,
            color: Colors.red,
            size: 40,
          ),
          title: Text(
            "Log Out",
            style: TextStyle(color: Colors.red),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
      ],
    );
  }
}
