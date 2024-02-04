import 'package:flutter/material.dart';

class MiniPlaylistCard extends StatelessWidget {
  const MiniPlaylistCard({
    required this.imageCard,
    required this.textLabel,
    super.key,
  });

  final String imageCard;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Card(
        elevation: 0,
        color: const Color.fromRGBO(199, 199, 199, 0.322),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset(
                imageCard,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 7),
            Container(
              width: 117,
              child: Text(
                textLabel,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
