import 'package:flutter/material.dart';
import 'package:railway_exams/widgets/utils/custom_textstyles.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: const Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Starts at ₹100,000/month',
            style: CustomTextStyle.subtittleTextStyle1,
          ),
          ElevatedButton(
            onPressed: () {
              // Your button action here
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Colors.greenAccent, 
            ),
            child: Text(
              'View subscription plans',
              style: CustomTextStyle.buttonTextStyle1,
            ),
          ),
        ],
      ),
    );
  }
}
