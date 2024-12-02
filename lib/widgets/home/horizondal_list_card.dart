import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String startDate;
  final String time;
  final String teachers;
  final String buttonText;
  final String imageUrl;

  const CourseCard({
    super.key,
    required this.title,
    required this.startDate,
    required this.time,
    required this.teachers,
    required this.buttonText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 120,
                width: 230,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                
                Container(
                  width: 20, 
                  height: 20, 
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent, 
                    borderRadius:
                        BorderRadius.circular(5), 
                    border: Border.all(
                      color: Colors.grey, 
                      width: 1, 
                    ),
                  ),
                  child: const Text(
                    'हि',
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 10, 
                    ),
                  ),
                ),

                const SizedBox(width: 8),
                const Text(
                  "FULL SYLLABUS COMPLETION",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Details (Start Date, Time)
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  startDate,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.schedule, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Teachers
            Row(
              children: [
                const Icon(Icons.person_outline_rounded,
                    size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  teachers,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Button
          ],
        ),
      ),
    );
  }
}
