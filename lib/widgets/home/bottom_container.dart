import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Background color for the row
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Starts at ₹100,000/month',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Your button action here
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Colors.greenAccent, // Green accent color
            ),
            child: const Text(
              'View subscription plans',
              style: TextStyle(color: Colors.white), // Button text color
            ),
          ),
        ],
      ),
    );
  }
}
