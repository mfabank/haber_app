import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List imgList = [
    "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/10/28/13/09/usa-1777986_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/09/08/12/00/starry-sky-1654074_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/11/07/12/02/business-man-1031755_960_720.jpg"
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              enlargeCenterPage: true,
              autoPlay: true,
              height: 180,
              initialPage: 0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imgUrl),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurpleAccent,
                    ),
                  );
                });
              }).toList()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 3.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.deepPurpleAccent
                      : Colors.blueGrey,
                ),
              );
            }),
          ),
          Divider(color: Colors.white),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 200.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/haber-app-deneme.appspot.com/o/2.jpg?alt=media&token=6ac4a43c-63f4-49b4-9e62-2b907d64be13'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
