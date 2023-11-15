class Event {
  final String id;
  final String name;
  final String type;
  final DateTime start;
  final DateTime end;

  Event({required this.id, required this.name, required this.type, required this.start, required this.end});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      name: json['summary'],
      type: json['description'],
      start: DateTime.parse(json['start']['date']),
      end: DateTime.parse(json['end']['date'])
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'start': start,
      'end': end
    };
  }
}