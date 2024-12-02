import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              SizedBox(
                height: screenWidth * 0.08,
                child: Image.asset(
                  'assets/unacademy.logo.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              ),
              SizedBox(width: screenWidth * 0.025),
              Text(
                'Railway Exams',
                style: CustomTextStyle.buttonTextStyle,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 25),
            child: Container(
              width: screenWidth * 0.09,
              height: screenWidth * 0.09,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                  width: screenWidth * 0.003,
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: screenWidth * 0.04,
                  color: Colors.white,
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
