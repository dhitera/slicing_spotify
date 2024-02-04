// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mradithyan_motionintern_week_3/widgets/bottom_nav_bar.dart';
import 'package:mradithyan_motionintern_week_3/widgets/mini_playlist_card.dart';
import 'package:mradithyan_motionintern_week_3/widgets/playlist_card.dart';
import 'package:mradithyan_motionintern_week_3/widgets/unselected_rounded_button.dart';
import 'package:mradithyan_motionintern_week_3/widgets/selected_rounded_button.dart';

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
                                textLabel: 'Musik buat berak'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/liked.jpg',
                                textLabel: 'Lagu yang Disukai')
                          ],
                        ),
                        Row(
                          children: [
                            MiniPlaylistCard(
                                imageCard: 'assets/images/thisis.jpg',
                                textLabel: 'This is Eminem'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Lorem')
                          ],
                        ),
                        Row(
                          children: [
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Lorem'),
                            MiniPlaylistCard(
                                imageCard: 'assets/images/ProfilePict.jpg',
                                textLabel: 'Lorem')
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
                        PlaylistCard(cardType: "Artist"),
                        PlaylistCard(),
                        PlaylistCard()
                      ],
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          )),
          backgroundColor: Color.fromRGBO(24, 20, 20, 1),
          bottomNavigationBar: BottomNavBar()),
    );
  }
}
