import 'package:flutter/material.dart';



class PlaylistSection extends StatelessWidget {
  final List<Map<String, dynamic>> playlist = [
    {
      'title': 'surender',
      'duration': '3:16',
      'played': false,
    },
    {
      'title': 'faithless',
      'duration': '3:23',
      'played': true,
    },
    {
      'title': 'hellish',
      'duration': '3:16',
      'played': false,
    },
    {
      'title': 'reckless',
      'duration': '3:56',
      'played': false,
    },
    {
      'title': 'hopeful',
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
              return InkWell(
                onTap: () {
                  // Handle button tap and navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsPage(song: song)),
                  );
                },
                child: Container(
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
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> song;

  DetailsPage({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Title: ${song['title']}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Duration: ${song['duration']}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}