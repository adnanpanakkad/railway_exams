import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/home/app_bar.dart';
import 'package:railway_exams/widgets/home/bottom_container.dart';
import 'package:railway_exams/widgets/home/center_container.dart';
import 'package:railway_exams/widgets/home/horizondal_list.dart';
import 'package:railway_exams/widgets/home/last_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: const HomeAppbar(),
      body: Stack(
        children: [
          // Main body content
          SingleChildScrollView(
            child: Column(
              children: [
                // Container(
                //   color: Colors.red,
                //   height: 450,
                //   width: double.infinity,
                // ),
                MainTileCard(),
                const SizedBox(height: 5),
                const CenterContainer(
                  leftText: '''Meet our\nexceptional educators''',
                  rightText: 'SEEALL',
                  imageUrl: 'assets/272642155.jpg',
                  text1: 'Saurabh Malik',
                  text2: 'Quantitative Aptitute',
                  text3: '72k folloers',
                ),
                const SizedBox(height: 5),
                const LastContainer(
                  tittle: 'Courses on All subjects',
                  leftText: 'Couupcoming',
                  rightText: 'SEEALL',
                  imageUrl: 'assets/images.jpg',
                  text1: 'General wareness',
                  text2: 'Target group on GK for\nRailway Grpou',
                  text3: 'saurabh malik',
                ),
                SizedBox(height: 40),
              ],
            ),
          ),

          // Sticky Row at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomContainer(),
          ),
        ],
      ),
    );
  }
}
