// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mradithyan_motionintern_week_3/widget/bottom_nav_bar.dart';
import 'package:mradithyan_motionintern_week_3/widget/mini_playlist_card.dart';
import 'package:mradithyan_motionintern_week_3/widget/playlist_card.dart';
import 'package:mradithyan_motionintern_week_3/widget/unselected_rounded_button.dart';
import 'package:mradithyan_motionintern_week_3/widget/selected_rounded_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/ProfilePict.jpg'),
                      ),
                      SelectedRoundedButton(
                        labelText: 'Semua',
                      ),
                      UnselectedRoundedButton(
                        labelText: 'Musik',
                      ),
                      UnselectedRoundedButton(
                        labelText: 'Podcast',
                      )
                    ],
                  )),
                  SizedBox(height: 10),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MiniPlaylistCard(
                                imageCard: 'assets/images/imgCard4.jpeg',
                                textLabel: 'Driving'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/imgCard2.jpg',
                                textLabel: 'Merenung')
                          ],
                        ),
                        Row(
                          children: [
                            MiniPlaylistCard(
                                imageCard: 'assets/images/imgCard1.jpg',
                                textLabel: 'Pop'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Progressive Rock')
                          ],
                        ),
                        Row(
                          children: [
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Queen'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Dewa Radio')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Stasiun Radio yang Direkomendasikan',
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.1,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard()
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Baru Diputar',
                      style: TextStyle(
                          color: Colors.white,
                          height: 1.1,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard()
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Baru Diputar',
                      style: TextStyle(
                          color: Colors.white,
                          height: 1.1,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard(),
                        PlaylistCard()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
          backgroundColor: Color.fromRGBO(24, 20, 20, 1),
          bottomNavigationBar: BottomNavBar()),
    );
  }
}
