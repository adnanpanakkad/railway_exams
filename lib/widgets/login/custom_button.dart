import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/app_colors.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          shadowColor: Colors.black.withOpacity(0.3),
          elevation: 8,
        ),
        child: Text(text, style: CustomTextStyle.buttonTextStyle),
      ),
    );
  }
}
