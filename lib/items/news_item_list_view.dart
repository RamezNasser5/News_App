import 'package:flutter/material.dart';
import 'package:news_app/items/news_item.dart';
import 'package:news_app/models/article_model.dart';

class NewsItemListView extends StatelessWidget {
  final List<ArticleModel> articalModelList;

  const NewsItemListView({super.key, required this.articalModelList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articalModelList.length,
        (context, index) {
          return NewsItem(articleModel: articalModelList[index]);
        },
      ),
    );
  }
}
