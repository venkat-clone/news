import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

import '../../../../configurations/configurations.dart';
import '../../../app/data/models/filter_model.dart';
import '../../../app/presentation/widgets/search_bar.dart';
import '../../../home/presentation/pages/news_feed.dart';
import '../../../home/presentation/widgets/news_card.dart';
import '../../cubit/favorite_cubit.dart';
import '../widgets/favorite_news_card.dart';

@RoutePage()
class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavoriteCubit>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bookmarks',
                style: Theme
                    .of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w900, fontSize: 30)),
            const SizedBox(height: kPadding * 2),
            AppSearchBar(
              enableFilters: false,
              onSearchChanged: cubit.search,
            ),
            const SizedBox(height: kPadding * 2),
            BlocBuilder<FavoriteCubit, CubitFavoriteState>(
              builder: (context, state) {
                if(state.isLoading){
                  return const Expanded(child: Center(child: CircularProgressIndicator()));
                }
                if(state.favorites.isEmpty){

                  return Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No News Found'),
                          const SizedBox(height: kPadding),
                          TextButton(
                              onPressed: () => cubit.getFavorites(), child: const Text('Refresh'))
                        ],
                      ));
                }
                final filteredNews = state.query?.isNotEmpty??false?state.searched!:state.favorites;

                return ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) => NewsCard(news: filteredNews[index], saveNews: () {
                      cubit.toggleSaved(index);
                    },),
                    separatorBuilder: (_, index) => const SizedBox(height: kPadding),
                    itemCount: filteredNews.length,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
