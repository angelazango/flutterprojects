import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      extendBodyBehindAppBar: true,
      // appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            PlaylistSection(),
            Container(
              height: 500,
              color: Colors.purple,
            ),
            Container(
              height: 400,
              color: Colors.orange,
            ),
            Container(
              height: 200,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.pink,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('image/download.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 30,
            child: Text(
              'Fearless',
              style: TextStyle(
                color: Colors.white,
                fontSize: 43,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 20,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(17),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 38,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaylistSection extends StatelessWidget {
  final List<Map<String, dynamic>> playlist = [
    {
      'title': 'Title 1',
      'duration': '3:16',
      'played': false,
    },
    {
      'title': 'Title 2',
      'duration': '3:23',
      'played': true,
    },
    {
      'title': 'Title 3',
      'duration': '3:16',
      'played': false,
    },
    {
      'title': 'Title 4',
      'duration': '3:56',
      'played': false,
    },
    {
      'title': 'Title 5',
      'duration': '3:16',
      'played': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: playlist.map((song) {
              return Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      song['title'],
                      style: TextStyle(
                        color: song['played'] ? Colors.blue : Colors.black,
                      ),
                    ),
                    Text(
                      song['duration'],
                      style: TextStyle(
                        color: song['played'] ? Colors.blue : Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: song['played'] ? Colors.blue : Colors.grey,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
