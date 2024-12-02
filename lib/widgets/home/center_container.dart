import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/app_colors.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class CenterContainer extends StatelessWidget {
  final String leftText;
  final String rightText;
  final String imageUrl;
  final String text1;
  final String text2;
  final String text3;

  const CenterContainer({
    super.key,
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
        color: Colors.grey[900], // Background color
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  leftText,
                  style: CustomTextStyle.buttonTextStyle,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your desired functionality here
                  },
                  child: Row(
                    children: [
                      Text(
                        rightText,
                        style: CustomTextStyle.buttonTextStyle1,
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
            const SizedBox(height: 20),

            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 200,
                width: 150,
              ),
            ),
            const SizedBox(height: 10),

            // Texts below the image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: CustomTextStyle.subtittleTextStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  text2,
                  style: CustomTextStyle.subtittleTextStyle1,
                ),
                const SizedBox(height: 5),
                Text(
                  text3,
                  style: CustomTextStyle.subtittleTextStyle2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
