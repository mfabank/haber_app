import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/11/07/12/02/business-1031754_960_720.jpg"),
              ),
              Positioned(
                bottom: -60,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          ListTile(
            title: Center(child: Text("Muhammed Fatih AKTAŞ")),
            subtitle: Center(child: Text("Engineer")),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.mail),
            color: Colors.white,
            label: Text(
              "Bana Ulaş",
              style: TextStyle(color: Colors.blue),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ],
      ),
    );
  }
}
