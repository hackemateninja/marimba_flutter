import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

Expanded _buildKey({Color color, int number}) {
  return Expanded(
    child: FlatButton(
      child: Image.asset('assets/marimba.jpg'),
      color: color,
      onPressed: () => AudioCache().play('note$number.wav'),
    ),
  );
}

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildKey(color: Colors.red, number: 1),
              _buildKey(color: Colors.redAccent, number: 2),
              _buildKey(color: Colors.orange, number: 3),
              _buildKey(color: Colors.orangeAccent, number: 4),
              _buildKey(color: Colors.amber, number: 5),
              _buildKey(color: Colors.amberAccent, number: 6),
              _buildKey(color: Colors.yellow, number: 7),
            ],
          ),
        ),
      ),
    );
