class Note {
  final int? id;
  final String title;
  final String content;

  Note({this.id, required this.title, required this.content});

  factory Note.fromMap(Map<String, dynamic> json) => Note(
        id: json['id'],
        title: json['title'] ?? '',
        content: json['content'] ?? '',
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
    };
  }
}
