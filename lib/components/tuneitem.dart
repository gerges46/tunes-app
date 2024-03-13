import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:tunessapp/models/tune_model.dart';
class TuneItem extends StatelessWidget {
TuneItem( { required this.tune});
final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
 AssetsAudioPlayer.newPlayer().open(
  Audio(tune.sound),

);
        },
        child: Container(

color: tune.color,
        ),
      ),
    );
  }
}
