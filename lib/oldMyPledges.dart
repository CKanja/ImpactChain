// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'models/feed.dart';
import 'Homepage.dart';
import 'create_pledge.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'widgets/theme_helper.dart';

class MyPledges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left),
          color: const Color(0xFF5D2B5C),
          iconSize: 30,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Daily Updates',
            style: TextStyle(
              fontFamily: 'DM',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: const Color(0xFF5D2B5C),
            iconSize: 30,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined),
            color: const Color(0xFF5D2B5C),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: FeedModel.dummyData.length,
        itemBuilder: (context, index) {
          FeedModel _model = FeedModel.dummyData[index];
          var postDate = _model.datetime;
          var postAuthor = _model.author;
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('My Pledge',
                style: TextStyle(
                  fontFamily: 'DM',
                  fontSize: 20,
                  color: Colors.black,
                )),
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Divider(
                height: 28.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 32.0,
                  child: Image.asset(_model.avatarUrl),
                ),
                title: Text(
                  _model.name,
                  style: const TextStyle(fontFamily: "DM"),
                ),
                subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_model.message,
                          style: const TextStyle(fontFamily: "DM")),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        '$postAuthor - $postDate',
                        style:
                            const TextStyle(fontFamily: "DM", fontSize: 12.0),
                      ),
                    ]),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
