import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromRGBO(24, 20, 20, 1),
      child: Column(
        children: [
          Container(
            width: 140,
            height: 140,
            child: Image.asset(
              'assets/images/imgCard1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 140,
            child: Text(
              'Lorem Ipsum, Dolor Sit Amet, Consectetur, Adipiscing Elit.',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(color: Color.fromARGB(197, 158, 158, 158)),
            ),
          )
        ],
      ),
    );
  }
}
