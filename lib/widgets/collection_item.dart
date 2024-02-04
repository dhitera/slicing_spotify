import 'package:flutter/material.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({
    required this.name,
    required this.cardType,
    required this.imgPath,
    required this.cardMaker,
    super.key,
  });

  final String name;
  final String cardType;
  final String imgPath;
  final String cardMaker;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            child: (cardType == "Artis")
                ? CircleAvatar(
                    backgroundImage: AssetImage(imgPath),
                  )
                : Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '${cardType} • ${cardMaker}',
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
