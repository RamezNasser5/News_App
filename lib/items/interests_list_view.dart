import 'package:flutter/material.dart';
import 'package:news_app/items/interests_item.dart';
import 'package:news_app/models/interests_model.dart';

class InterestsListView extends StatelessWidget {
  const InterestsListView({
    super.key,
  });
  final List<InterestsModel> interestsList = const [
    InterestsModel(image: 'assets/business.jpg', text: 'business'),
    InterestsModel(image: 'assets/entertaiment.avif', text: 'entertainment'),
    InterestsModel(image: 'assets/general.jpg', text: 'general'),
    InterestsModel(image: 'assets/health.avif', text: 'health'),
    InterestsModel(image: 'assets/science.avif', text: 'science'),
    InterestsModel(image: 'assets/sports.jpg', text: 'sports'),
    InterestsModel(image: 'assets/technology.jpeg', text: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InterestsItem(
            interests: interestsList[index],
          );
        },
      ),
    );
  }
}
