import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/features/home/blocs/home_cubit.dart';
import 'package:my_news/features/home/blocs/home_cubit.dart';
import 'package:my_news/features/home/presentation/widgets/categories.dart';
import '../../../../configurations/configurations.dart';
import '../../../app/presentation/widgets/search_bar.dart';
import '../widgets/news_card.dart';
import 'news_feed.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          await cubit.getNews();
        },
        child: ListView(
          padding: const EdgeInsets.all(kPadding * 2),
          children: [
            Text('8 News ',
                style: Theme
                    .of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: kPadding * 2),
            BlocBuilder<HomeCubit, HomeCubitState>(
              buildWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
              builder: (context, state) {
                return Categories(
                  categories: const ['All', ...categoryList],
                  selectedIndex: state.selectedIndex,
                  onSelected: cubit.selectCategory,
                );
              },
            ),
            const SizedBox(height: kPadding * 2),
            BlocBuilder<HomeCubit, HomeCubitState>(
              builder: (BuildContext context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.newses.isEmpty) {
                  return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No News Found'),
                          const SizedBox(height: kPadding),
                          TextButton(
                              onPressed: () => cubit.getNews(),
                              child: const Text('Refresh'))
                        ],
                      ));
                }
                if (state.filteredNews.isEmpty) {
                  return const Center(child: Text('No News Found'));
                }

                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) =>
                      NewsCard(
                        news: state.filteredNews[index],
                        saveNews: () {
                          cubit.toggleSaved(index);
                          // context.read<NewsCubit>().saveNews(filteredNews[index]);
                        },
                      ),
                  separatorBuilder: (_, index) =>
                  const SizedBox(height: kPadding),
                  itemCount: state.filteredNews.length,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
