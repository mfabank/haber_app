import 'package:flutter/material.dart';
import 'package:haber_app/models/tabbar_page.dart';
import 'package:haber_app/sayfalar/favori_page.dart';
import 'package:haber_app/sayfalar/home_page.dart';
import 'package:haber_app/sayfalar/photo_upload.dart';
import 'package:haber_app/sayfalar/profil_page.dart';
import './models/drawer_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _seciliIndex = 0;
  List<Widget> _sayfalar = <Widget>[
    HomePage(),
    ProfilPage(),
    FavoriPage(),
    PhotoUpload(),
  ];
  void _tiklananBar(int index) {
    setState(() {
      _seciliIndex = index;
    });
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Haber Uygulaması"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(40), child: TabBarPage()),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: DrawerPage(),
        body: Center(
          child: _sayfalar.elementAt(_seciliIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _seciliIndex,
          selectedItemColor: Colors.deepPurpleAccent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Anasayfa"),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profil"),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favoriler"),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              title: Text("Haber Ekle"),
              backgroundColor: Colors.deepPurpleAccent,
            ),
          ],
          onTap: _tiklananBar,
        ),
      ),
    );
  }
}
