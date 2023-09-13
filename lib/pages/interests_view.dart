import 'package:flutter/material.dart';
import 'package:news_app/items/news_list_view_biulder.dart';

class InterestsView extends StatelessWidget {
  const InterestsView({super.key, required this.categury});
  final String categury;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        NewsListViewBuilder(
          categury: categury,
        ),
      ],
    ));
  }
}
