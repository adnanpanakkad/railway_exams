import 'package:flutter/material.dart';
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
        color: Colors.grey[800], // Background color of the container
        //borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Row with Texts at both ends
          Text(tittle, style: CustomTextStyle.buttonTextStyle),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(leftText, style: CustomTextStyle.buttonTextStyle),
                TextButton(onPressed: () {}, child: Text(rightText))
              ],
            ),
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

          // Three Texts Below the Image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Text(
                  text1,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  text2,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  text3,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
