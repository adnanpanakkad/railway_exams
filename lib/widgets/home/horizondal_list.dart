import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  // Constructor with a list of image paths
  final String images;

  // Constructor
  TopContainer({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container with image and dividers
        Container(
          //width: double.infinity,
          child: Image.asset(images),
        ),
        SizedBox(height: 20),

        // Five rows with icons and text
        _buildIconRow(Icons.access_alarm, 'Row 1 Description'),
        _buildIconRow(Icons.accessibility, 'Row 2 Description'),
        _buildIconRow(Icons.account_circle, 'Row 3 Description'),
        _buildIconRow(Icons.ac_unit, 'Row 4 Description'),
        _buildIconRow(Icons.airplanemode_active, 'Row 5 Description'),
      ],
    );
  }

  // Helper function to create a row with an icon and text
  Widget _buildIconRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.blue), // Icon
          SizedBox(width: 10),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
