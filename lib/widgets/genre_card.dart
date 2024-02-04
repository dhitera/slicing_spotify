import 'package:flutter/material.dart';
import 'dart:math';

class GenreCard extends StatelessWidget {
  const GenreCard({
    required this.genreText,
    super.key,
  });

  final String genreText;

  @override
  Widget build(BuildContext context) {
    final randomColor = Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      1.0,
    );

    return Expanded(
        child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: randomColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 7,
            child: Text(
              genreText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              right: -20,
              bottom: 0,
              child: Transform.rotate(
                angle: 0.45,
                child: Container(
                  width: 80,
                  child: Image.asset(
                    'assets/images/thisis.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
