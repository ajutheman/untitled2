import 'package:flutter/material.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // List of news articles using a ListView.builder
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10, // Replace with your actual number of news articles
              itemBuilder: (context, index) {
                // Replace with your news article model data
                final newsArticle = NewsArticle(
                  title: "News Title $index",
                  category: "Category $index",
                );

                return NewsCard(newsArticle: newsArticle);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String category;

  NewsArticle({
    required this.title,
    required this.category,
  });
}

class NewsCard extends StatelessWidget {
  final NewsArticle newsArticle;

  NewsCard({
    required this.newsArticle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.blue, // Placeholder for image or other content
            ),
            ListTile(
              title: Text(newsArticle.title),
              subtitle: Text(newsArticle.category),
            ),
          ],
        ),
      ),
    );
  }
}
