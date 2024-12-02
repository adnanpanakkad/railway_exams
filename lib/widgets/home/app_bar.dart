import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        // Only add a border at the bottom
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Grey border color
            width: 1, // Border width
          ),
        ),
      ),
      child: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: screenWidth * 0.08, // Responsive logo height
              child: Image.asset(
                'assets/unacademy.logo.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
            SizedBox(
                width: screenWidth * 0.025), // Spacing between logo and title
            Text(
              'Railway Exams', // Title text
              style: CustomTextStyle.buttonTextStyle,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: screenWidth * 0.09, // Responsive circle size
              height: screenWidth * 0.09,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, // Circle background color
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: screenWidth * 0.003, // Border width
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: screenWidth * 0.05, // Responsive icon size
                  color: Colors.white, // Icon color
                ),
                onPressed: () {
                  // Your search action here
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
