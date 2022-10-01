import 'package:flutter/cupertino.dart';
import 'package:listtowidget/sourse.dart';

class News{
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  News.fromMap(Map<String, dynamic> map){
    source = Source.fromMap(map);
    author = map['author'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    publishedAt = map['publishedAt'];
    content = map['content'];
  }
}