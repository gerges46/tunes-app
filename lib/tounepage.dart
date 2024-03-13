import 'package:flutter/material.dart';
import 'package:tunessapp/components/tuneitem.dart';
import 'package:tunessapp/models/tune_model.dart';

class ItemTunes extends StatelessWidget {
  const ItemTunes({
    Key? key,
  }) : super(key: key);
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfffe4039), sound: "assets/sounds/note1.wav"),
    TuneModel(color: Color(0xfffd982b), sound: "assets/sounds/note2.wav"),
    TuneModel(color: Color(0xfffdeb57), sound: "assets/sounds/note3.wav"),
    TuneModel(color: Color(0xff33af57), sound: "assets/sounds/note4.wav"),
    TuneModel(color: Color(0xff009887), sound: "assets/sounds/note5.wav"),
    TuneModel(color: Color(0xff0097ed), sound: "assets/sounds/note6.wav"),
    TuneModel(color: Color(0xffa227ac), sound: "assets/sounds/note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff233139),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "TunesApp",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        body: Container(
          child: Column(
            // maping to link color by thing by use map instead of using loop
            children: tunes.map((e) => TuneItem(tune: e)).toList(),
/*

              TuneItem(
                color: Color(0xfffe4039),
              ),
              TuneItem(
                color: Color(0xfffd982b),
              ),
              TuneItem(
                color: Color(0xfffdeb57),
              ),
              TuneItem(
                color: Color(0xff33af57),
              ),
              TuneItem(
                color: Color(0xff009887),
              ),
              TuneItem(
                color: Color(0xff0097ed),
              ),
              TuneItem(
                color: Color(0xffa227ac),
              ),*/
            //getTunesItem(),
          ),
        ),
      ),
    );
  }
// method to use color way one
  /*List<TuneItem> getTunesItem() {
    List<TuneItem> items = [];
    for (var color in tunes) {
      items.add(TuneItem(color: color));
    }
    return items;
  }*/
}
