import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:my_news/features/app/data/models/filter_model.dart';
import 'package:my_news/features/app/presentation/widgets/search_bar.dart';
import '../../../../configurations/configurations.dart';
import '../../../home/presentation/widgets/news_card.dart';
import '../../blocs/search_cubit.dart';

@RoutePage()
class ScrollingPage extends StatelessWidget {
  const ScrollingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          children: [
            BlocBuilder<SearchCubit, SearchCubitState>(
              buildWhen: (previous, current) =>
                  previous.filter != current.filter,
              builder: (context, state) {
                return AppSearchBar(
                    onFiltersChanged: cubit.applyFilters,
                    filterModel: state.filter,
                    onSearchChanged: cubit.applySearch);
              },
            ),

            const SizedBox(height: kPadding * 2),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchCubitState>(
                builder: (context, state) {
                  print('state.filtered.length ${state.filter.query}');
                  if(state.filter.query?.isEmpty??true) {
                    return const Center(
                      child: Text('Start typing for news'),
                    );
                  }
                  if (state.filtered.isEmpty) {
                    return const Center(
                      child: Text('No News Found'),
                    );
                  }
                  if(state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: state.filtered.length,
                    itemBuilder: (context, index) {
                      final news = state.filtered[index];
                      return NewsCard(news: news, saveNews: () {
                        // context.read<HomeCubit>().saveNews(news);
                      },
                      showSaveIcon: false,);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
