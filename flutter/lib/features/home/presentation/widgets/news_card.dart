import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

import '../../../../utils/dynamic_date.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news, this.saveNews,this.showSaveIcon = true});

  final NewsModel news;
  final void Function()? saveNews;
  final bool  showSaveIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(NewsDetailsRoute(news: news));
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(kBorderRadius * 0.8),
          ),
          padding: const EdgeInsets.all(kPadding * 0.8),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kBorderRadius * 0.5),
                    child: (news.image != null)
                        ? Image.network(
                            news.image!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            width: 70,
                            height: 70,
                            color: Colors.grey[300],
                          ),
                  ),
                  const SizedBox(width: kPadding),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              news.title,
                              // style: Theme.of(context).textTheme.t,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if(showSaveIcon)GestureDetector(
                              onTap: saveNews,
                              child: Icon(
                                news.saved?Icons.bookmark:Icons.bookmark_border,
                              ))
                        ],
                      ),
                      const SizedBox(height: kPadding),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              news.sourceId ?? '',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                          Text(
                            getDynamicDate(news.publishedAt!),
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ],
          )),
    );
  }
}
