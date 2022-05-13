class MemoModel {
  final int id;
  final String title;
  final String content;

  MemoModel({required this.id, required this.title, required this.content});

  Map<String, dynamic> toMap() {
    // used when inserting data to the database
    return <String, dynamic>{
      "id": id,
      "title": title,
      "content": content,
    };
  }
}
