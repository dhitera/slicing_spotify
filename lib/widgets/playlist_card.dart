import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    this.cardType = "Playlist",
    super.key,
  });

  final String cardType;

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
            child: (cardType == "Artist")
                ? CircleAvatar(
                    backgroundImage: AssetImage('assets/images/artist.jpg'),
                  )
                : Image.asset(
                    'assets/images/radio.png',
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 140,
            child: (cardType == "Artist")
                ? Center(
                    child: Text(
                      'Lil Pelir',
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                : Text(
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
