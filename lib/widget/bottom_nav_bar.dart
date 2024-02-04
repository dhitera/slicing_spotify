import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(188, 0, 0, 0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 40,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_play,
              size: 40,
            ),
            label: 'Collection',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/search');
              break;
            case 2:
              Navigator.pushNamed(context, '/collection');
              break;
          }
        },
      ),
    );
  }
}
