import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: blueColor,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(color: whiteColor, fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/freind1.png',
                        name: 'Joshuar',
                        text: 'Sorry, you???re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/freind2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2.30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11.11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '7.11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7.11',
                        unread: false,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
