// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:sdg_goals/Feedpage.dart';
import 'package:sdg_goals/quiz.dart';

import 'Homepage.dart';
import 'create_pledge.dart';

class bottomNav extends StatefulWidget{
  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _selectedIndex = 0;

  List<Widget> _screens = [Homepage(), QuizWidget(), FeedPage(), CreatePledge()];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _screens[_selectedIndex],
       body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            gap: 8,
            //backgroundColor: Color.fromRGBO(50, 0, 69, 1),
            backgroundColor: Colors.white,
            //activeColor: Color.fromRGBO(142, 102, 158, 1),
            activeColor: Color.fromRGBO(168, 117, 189, 1),
            color: Color.fromRGBO(142, 102, 158, 1),
            tabBackgroundColor: Color.fromRGBO(50, 0, 69, 1),
            padding: EdgeInsets.all(12),
           
            
            tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.quiz_outlined,
                    text: 'SDG Quiz'),
            GButton(icon: Icons.feed_outlined, text: 'Feed'),
            
            GButton(icon: Icons.comment_bank_outlined, text: 'My pledge'),
          ],
          selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          // onTabChange: (index){
          //   print(index);
          // //   setState(() {
          // //     _selectedIndex = index;
          // //   });
          // //   controller.jumpToPage(index);
          // //   currentIndex: index;
          // // },
          // },
          ),
        ),
      ),
    );
  }
}