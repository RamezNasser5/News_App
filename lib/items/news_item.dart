// import 'package:cached_network_image/cached_network_image.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              onTap: () async {
                Uri? uri =
                    Uri.tryParse(Uri.encodeFull(widget.articleModel.url));
                await launchUrl(uri!);
              },
              child: Image.network(
                widget.articleModel.imageURL ??
                    'https://via.placeholder.com/300x150',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            widget.articleModel.tilte ?? 'this no connection',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.articleModel.supTitle ?? 'this no connection',
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}


// CachedNetworkImage(
//   imageUrl: articleModel.imageURL ??
//       'https://media.istockphoto.com/id/1432800146/photo/people-putting-the-jigsaws-team-together-charity-volunteer-unity-team-business-concept-of.jpg?s=1024x1024&w=is&k=20&c=IeKyTh2XjrjpXIYDf1dtKIiDQju3isPQV3MJ9w8vDBg=',
//   placeholder: (context, url) => const CircularProgressIndicator(),
//   errorWidget: (context, url, error) => const Icon(Icons.error),
// ),

// if (uri != null) {
//   if (await canLaunchUrl(uri)) {
//     await launchUrl(uri);
//   }
//    else {
//     // Handle the case where the website URL cannot be launched.
//     print('Could not launch $uri');
//   }
// } else {
//   // Handle the case where the website URL is invalid.
//   print('Invalid website URL: ${widget.articleModel.url}');
// }