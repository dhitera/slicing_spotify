import 'package:flutter/material.dart';
import 'package:mradithyan_motionintern_week_3/widgets/bottom_nav_bar.dart';
import 'package:mradithyan_motionintern_week_3/widgets/genre_card.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsetsDirectional.only(top: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/ProfilePict.jpg'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Cari',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 33,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Apa yang ingin kamu dengarkan?',
                            hintStyle: TextStyle(fontSize: 17)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    "Browse semua"),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(children: [
                  Row(
                    children: [
                      GenreCard(genreText: "Rock"),
                      SizedBox(width: 10),
                      GenreCard(genreText: 'Pesta')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GenreCard(genreText: "Religi"),
                      SizedBox(width: 10),
                      GenreCard(genreText: 'Rilis Baru')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GenreCard(genreText: "K-Pop"),
                      SizedBox(width: 10),
                      GenreCard(genreText: 'Indie')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GenreCard(genreText: "Tidur"),
                      SizedBox(width: 10),
                      GenreCard(genreText: 'Metal')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GenreCard(genreText: "Trending"),
                      SizedBox(width: 10),
                      GenreCard(genreText: 'Klasik')
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      )),
      backgroundColor: Color.fromRGBO(24, 20, 20, 1),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
