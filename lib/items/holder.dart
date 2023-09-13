// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/items/news_item.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';

// class NewsItemListView extends StatefulWidget {
//   const NewsItemListView({super.key});

//   @override
//   State<NewsItemListView> createState() => _NewsItemListViewState();
// }

// class _NewsItemListViewState extends State<NewsItemListView> {
//   List<ArticleModel> articalModelList = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articalModelList = await NewsServices(Dio()).getGeneralResponse(categury: 'general');
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articalModelList.length,
//               (context, index) {
//                 return NewsItem(articleModel: articalModelList[index]);
//               },
//             ),
//           );
//   }
// }
