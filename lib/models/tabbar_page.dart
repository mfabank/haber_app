import 'package:flutter/material.dart';
import 'package:haber_app/sayfalar/home_page.dart';
import 'package:haber_app/sayfalar/profil_page.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  final sayfalar = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: ProfilPage(),
    ),
    Center(
      child: Text("Favoriler"),
    ),
    Center(
      child: Text("Çıkış"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return TabBar(tabs: <Widget>[
      Tab(
        text: "Anasayfa",
      ),
      Tab(
        text: "Spor",
      ),
      Tab(
        text: "Seyahat",
      ),
      Tab(
        text: "Eğitim",
      ),
    ]);
  }
}
