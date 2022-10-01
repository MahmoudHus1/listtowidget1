import 'package:flutter/material.dart';
import 'package:listtowidget/data.dart';

import 'news.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

List<News> convertToList() {
  List<News> news = [];
  data.forEach((element) {
    News n = News.fromMap(element);
    news.add(n);
  });
  return news;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mahmoud Hussein'),
      ),
      body: SingleChildScrollView(
        child: Column(children: convertToList().map((e) {
          return Column(children: [
            Image.network(data[2]['urlToImage']),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(e.author ?? ""),
                const SizedBox(width: 10),
                Text(e.publishedAt ?? "")
              ],
            ),
            const SizedBox(height: 10),
            Text(e.description ?? ""),
            const SizedBox(height: 10),
            Text(e.title ?? ""),
            const SizedBox(height: 20),
          ]);
        }).toList()
          
        ),
      ),
    );
  }
}
