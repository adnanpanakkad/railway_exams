import 'package:flutter/material.dart';

class MainTileCard extends StatelessWidget {
  const MainTileCard({
    super.key,
     this.title,
     this.movies1,
     this.movies2,
  });

  final String? title;
  final List? movies1; // List for the first horizontal list
  final List? movies2; // List for the second horizontal list

  @override
  Widget build(BuildContext context) {
    if (movies1!.isEmpty && movies2!.isEmpty) {
      return const SizedBox();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // First horizontal ListView
        if (movies1!.isNotEmpty)
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies1!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image.asset(
                        'assets/images.jpg', // Replace with movies1[index] for dynamic image source
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.broken_image, color: Colors.white),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        const SizedBox(height: 10), // Spacer between the two ListViews
        // Second horizontal ListView
        if (movies2!.isNotEmpty)
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies2!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image.asset(
                        'assets/images.jpg', // Replace with movies2[index] for dynamic image source
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.broken_image, color: Colors.white),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
