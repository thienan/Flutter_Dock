
import 'dart:convert' as json;

class Article {
  final String text;
  final String url;
  final String by;
  final int time;
  final int score;

  const Article({
    this.text,
    this.url,
    this.by,
    this.time,
    this.score,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;

    return Article(
        text: json['text'] ?? ['null'],
        url: json['url'],
        by: json['by'],
        time: json['time'],
        score: json['score']);
  }
}

List<int> parseTopStories(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  final listOfIds = List<int>.from(parsed);

  return listOfIds;

//  throw UnimplementedError();
}

Article parseArticle(String jsonStr) {
//  throw UnimplementedError();

  final parsed = json.jsonDecode(jsonStr);
  Article article = Article.fromJson(parsed);
  return article;
}
