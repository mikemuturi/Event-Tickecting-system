import 'package:event_ticketing/menu/category/event_page.dart';
import 'package:event_ticketing/models/event_model.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          mainAxisSpacing: 16.0, // Spacing between rows
          crossAxisSpacing: 16.0, // Spacing between columns
          childAspectRatio: 1.0, // Aspect ratio of each grid item
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventPage(category: category.name),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Text(category.name),
              ),
            ),
          );
        },
      ),
    );
  }
}



