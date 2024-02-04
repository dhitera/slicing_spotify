import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    required this.genreColor,
    required this.genreText,
    super.key,
  });

  final Color genreColor;
  final String genreText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: genreColor,
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
                    'assets/images/imgCard1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
