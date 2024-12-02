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
      backgroundColor: Colors.green,
      appBar: const HomeAppbar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 360,
                  // child: ListView.builder(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: 2,
                  //   itemBuilder: (context, index) {
                  //     return TopContainer(
                  //       images: 'assets/272642155.jpg',
                  //     );
                  //   },
                  // ),
                ),
                const SizedBox(height: 5),
                const CenterContainer(
                  leftText: '''Meet our\nexceptional educators''',
                  rightText: 'SEE ALL ',
                  imageUrl: 'assets/272642155.jpg',
                  text1: 'Saurabh Malik',
                  text2: 'Quantitative Aptitude',
                  text3: '72k followers',
                ),
                const SizedBox(height: 5),
                const LastContainer(
                  tittle: 'Upcoming',
                  leftText: 'Courses on All subjects',
                  rightText: 'SEE ALL ',
                  imageUrl: 'assets/images.jpg',
                  text1: 'General Awareness',
                  text2: 'Target group on GK for\nRailway Group',
                  text3: 'Saurabh Malik',
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
          const Positioned(
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
