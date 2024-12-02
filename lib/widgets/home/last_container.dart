import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/app_colors.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class LastContainer extends StatelessWidget {
  final String tittle;
  final String leftText;
  final String rightText;
  final String imageUrl;
  final String text1;
  final String text2;
  final String text3;

  const LastContainer({
    super.key,
    required this.tittle,
    required this.leftText,
    required this.rightText,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800], // Background color
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leftText,
              style: CustomTextStyle.buttonTextStyle,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tittle,
                  style: CustomTextStyle.buttonTextStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        rightText,
                        style: const TextStyle(color: Appcolor.primaryColor),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Appcolor.primaryColor,
                        size: 13.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 120,
                width: 200,
              ),
            ),
            const SizedBox(height: 10),

            // Texts below the image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  text2,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  text3,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
