import 'dart:ffi';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/features/app/data/models/news_model.dart';
import 'package:my_news/features/news/cuibt/news_cubit.dart';
import 'package:my_news/features/news/cuibt/news_cubit.dart';
import 'package:my_news/utils/dynamic_date.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../configurations/configurations.dart';
import '../widgets/appbar_image.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollBehavior:
            const MaterialScrollBehavior().copyWith(overscroll: false),
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(kBorderRadius))),
            leading: IconButton(
              color: Colors.black,
              onPressed: () {
                context.router.pop();
              },
              icon: Container(
                  padding: const EdgeInsets.all(kPadding * 0.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: const Icon(Icons.keyboard_arrow_left_rounded)),
            ),
            actions: [
              BlocBuilder< NewsCubit,NewsState>(
                builder: (context, state) {
                  return IconButton(
                    color: Colors.black,
                    onPressed: () async {
                      await context.read<NewsCubit>().toggleSaved(news);
                      DjangoflowAppSnackbar.showInfo('News ${!news.saved?'saved':'unsaved'}');
                    },
                    icon: Icon(
                      news.saved?Icons.bookmark:Icons.bookmark_border,
                      shadows: const [BoxShadow(color: Colors.white, blurRadius: 10)],
                    ),
                  );
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                child: Container(
                  color: Colors.grey[300],
                  child:
                      news.image == null ? null : AppBarImage(src: news.image),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(kPadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: kPadding),
                    Text(
                      '${news.category}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: kPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coming from ${news.sourceId}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          getDynamicDate(news.publishedAt!),
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    const SizedBox(height: kPadding),
                    Text(
                      news.content ?? '',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: kPadding),
                    Text(
                      news.sourceId ?? '',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(height: kPadding),
                    Text(
                      getDynamicDate(news.publishedAt!),
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Share.share('Check out this news ${news.link}');
        },
        child: const Icon(Icons.share),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        if (news.link != null)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kPadding * 2, vertical: kPadding),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final Uri _url = Uri.parse(news.link!);
                  launchUrl(_url);
                },
                child: const Text('Read More'),
              ),
            ),
          )
      ],
    );
  }
}
