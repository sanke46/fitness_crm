class Activity {
  final String activity;
  final int availability;
  final String type;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final String link;
  final String key;

  const Activity({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'activity': String activity,
        'availability': dynamic availability,
        'type': String type,
        'participants': dynamic participants,
        'price': dynamic price,
        'accessibility': String accessibility,
        'duration': dynamic duration,
        'kidFriendly': dynamic kidFriendly,
        'link': String link,
        'key': String key,
      } =>
        Activity(
          activity: activity,
          availability: availability is int
              ? availability
              : int.tryParse(availability.toString()) ?? 0,
          type: type,
          participants: participants is int
              ? participants
              : int.tryParse(participants.toString()) ?? 0,
          price: price is double
              ? price
              : double.tryParse(price.toString()) ?? 0.0,
          accessibility: accessibility,
          duration: duration.toString(),
          kidFriendly: kidFriendly is bool
              ? kidFriendly
              : (kidFriendly == 1 || kidFriendly == 'true'),
          link: link,
          key: key,
        ),
      _ => throw const FormatException('Failed to load activity.'),
    };
  }
}
