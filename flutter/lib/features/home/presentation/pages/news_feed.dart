import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';

import '../../../app/data/models/news_model.dart';
import '../widgets/news_card.dart';

class NewFeed extends StatelessWidget {
  const NewFeed({super.key, required this.news, required this.selectedIndex, this.physics = const NeverScrollableScrollPhysics()});

  final List<NewsModel> news;
  final int selectedIndex;
  final ScrollPhysics physics ;


  @override
  Widget build(BuildContext context) {
    final filteredNews = news
        .where((element) {
      if(selectedIndex == 0){
        return true;
      }
      return element.category?.toLowerCase() == categoryList[selectedIndex-1].toLowerCase();
    })
        .toList();
    if (filteredNews.isEmpty) {
      return const Center(child: Text('No News Found'));
    }
    return ListView.separated(
        shrinkWrap: true,
        physics: physics,
        itemBuilder: (_, index) => NewsCard(news: filteredNews[index], saveNews: () {
          // context.read<NewsCubit>().saveNews(filteredNews[index]);
        },),
        separatorBuilder: (_, index) => const SizedBox(height: kPadding),
        itemCount: filteredNews.length);
  }
}
