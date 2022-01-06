class PublicChat {
  late String name;
  late String text;
  late DateTime timestamp;

  PublicChat({required this.name, required this.text, required this.timestamp});
  PublicChat.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    text = json['text'] ?? "";
    timestamp = DateTime.fromMillisecondsSinceEpoch(json['timestamp'] ?? 0);
  }
}
