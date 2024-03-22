 import 'package:event_ticketing/models/event_model.dart';
import 'package:flutter/material.dart';


class EventPage extends StatelessWidget {
  final String category;

  const EventPage({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Event> filteredEvents =
        events.where((event) => event.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Events for $category'),
      ),
      body: ListView.builder(
        itemCount: filteredEvents.length,
        itemBuilder: (context, index) {
          final event = filteredEvents[index];
          return ListTile(
            title: Text(event.name),
          );
        },
      ),
    );
  }
}