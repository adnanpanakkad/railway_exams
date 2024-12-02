import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/home/app_bar.dart';
import 'package:railway_exams/widgets/home/bottom_container.dart';
import 'package:railway_exams/widgets/home/center_container.dart';
import 'package:railway_exams/widgets/home/horizondal_list_card.dart';
import 'package:railway_exams/widgets/home/last_container.dart';
import 'package:railway_exams/widgets/login/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: const HomeAppbar(),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                width: double.infinity,
                height: 310,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CourseCard(
                        imageUrl: "assets/images.jpg",
                        title: index == 0
                            ? "Abhyaas - Railways Group D"
                            : "लक्ष्य - RRB NTPC CBT 2",
                        startDate: "Started on 5 Jan 2022",
                        time: "Morning classes",
                        teachers: index == 0
                            ? "M S Mustafa, Deepak Kumar Sharma\n, Samar Pratap Singh"
                            : "Vimlesh Yadav, M S Mustafa,\n Deepak Kumar Singh",
                        buttonText: "View subscription plans",
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:
                    CustomButton(text: 'View subscription plans', onTap: () {}),
              ),

              // Subscription Button
              TextButton(
                onPressed: () {},
                child: const Text(
                  "SEE HOW SUBSCRIPTION WORKS >",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(height: 10, color: Colors.black54),

              // Center Container Section
              const CenterContainer(
                leftText: 'Meet our\nexceptional educators',
                rightText: 'SEE ALL ',
                imageUrl: 'assets/272642155.jpg',
                text1: 'Saurabh Malik',
                text2: 'Quantitative Aptitude',
                text3: '72k followers',
              ),
              Container(height: 10, color: Colors.black54),

              // Last Container Section
              const LastContainer(
                tittle: 'Upcoming',
                leftText: 'Courses on All subjects',
                rightText: 'SEE ALL ',
                imageUrl: 'assets/images.jpg',
                text1: 'General Awareness',
                text2: 'Target group on GK for\nRailway Group D',
                text3: 'Saurabh Malik',
              ),
              const SizedBox(height: 60),
            ],
          ),

          // Bottom Container Section
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
