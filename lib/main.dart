import 'package:flutter/material.dart';

import 'tounepage.dart';

void main() {
  runApp(TunesApp());
}
class TunesApp extends StatelessWidget {
  const TunesApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemTunes();
  }
}
