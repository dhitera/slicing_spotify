import 'package:flutter/material.dart';

class CollectionItem extends StatefulWidget {
  const CollectionItem({super.key});

  @override
  State<CollectionItem> createState() => _CollectionItemState();
}

class _CollectionItemState extends State<CollectionItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            child: Image.asset(
              'assets/images/ProfilePict.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lagu yang Disukai',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Playlist • Radithya',
                style: TextStyle(
                  color: Color.fromARGB(255, 136, 136, 136),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
