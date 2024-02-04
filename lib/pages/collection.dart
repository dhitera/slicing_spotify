import 'package:flutter/material.dart';
import 'package:mradithyan_motionintern_week_3/widget/bottom_nav_bar.dart';
import 'package:mradithyan_motionintern_week_3/widget/collection_item.dart';
import 'package:mradithyan_motionintern_week_3/widget/unselected_rounded_button.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 135,
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              backgroundColor: Color.fromRGBO(10, 9, 9, 1),
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(5),
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
                              'Koleksi Kamu',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(width: 7),
                            Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            UnselectedRoundedButton(labelText: 'Playlist'),
                            UnselectedRoundedButton(labelText: 'Album'),
                            UnselectedRoundedButton(labelText: 'Artis'),
                            UnselectedRoundedButton(
                                labelText: 'Sudah di-download')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Terakhir',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.list,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return CollectionItem();
                          })
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(24, 20, 20, 1),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
