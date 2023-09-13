// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:news_app/models/interests_model.dart';
import 'package:news_app/pages/interests_view.dart';

class InterestsItem extends StatelessWidget {
  const InterestsItem({super.key, required this.interests});
  final InterestsModel interests;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return InterestsView(
                categury: interests.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(interests.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            interests.text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )),
        ),
      ),
    );
  }
}
