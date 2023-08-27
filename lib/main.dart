import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
void playsound(int s){
  final AudioPlayer player = AudioPlayer();
  player.play(AssetSource('note$s.wav'));
}
Expanded buildkey({Color color= Colors.black, int sound=1}){
  return Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: color,
            ),
            onPressed: (){
            playsound(sound);
          }, 
          child: Text('.'),),
        );
}


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          buildkey(color: Colors.red, sound: 1),
          buildkey(color: Colors.orange, sound: 2),
          buildkey(color: Colors.yellow, sound: 3),
          buildkey(color: Colors.green, sound: 4),
          buildkey(color: Colors.teal, sound: 5),
          buildkey(color: Colors.blue, sound: 6),
          buildkey(color: Colors.purple, sound: 7),







          ],
        )),
      ),
    );
  }
}