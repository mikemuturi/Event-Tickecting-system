class Event {
  final String name;
  final String category;

  Event(this.name, this.category);
}

class Category {
  final String name;

  Category(this.name);
}


List<Category> categories = [
  Category('Sports'),
  Category('Community'),
  Category('National'),
  Category('Technology'),
];

List<Event> events = [
  Event('Team Building', 'Sports'),
  Event('Football Match', 'Sports'),
  Event('Api Festival', 'Technology'),
  Event('Artificial Intteligence Unveiled', 'Technology'),
  Event('Tree Planting', 'Community'),
  Event('Voting Day', 'National'),
  Event('National Prayers Day', 'National'),
];
