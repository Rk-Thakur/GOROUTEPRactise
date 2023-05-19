import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Meme {
  final int id;
  final String imageUrl;
  final String caption;
  final String category;
  Meme(
    this.id,
    this.imageUrl,
    this.caption,
    this.category,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageUrl': imageUrl,
      'caption': caption,
      'category': category,
    };
  }

  factory Meme.fromMap(Map<String, dynamic> map) {
    return Meme(
      map['id'] as int,
      map['imageUrl'] as String,
      map['caption'] as String,
      map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  Meme.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        imageUrl = json['image'],
        caption = json['caption'],
        category = json['category'];
}
