import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

import '../data/repo/news_repo.dart';

part 'news_cubit.freezed.dart';

part 'news_cubit.g.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required bool loading,
  }) = _NewsState;

  factory NewsState.fromJson(Map<String, dynamic> json) =>
      _$NewsStateFromJson(json);
}


class NewsCubit extends Cubit<NewsState>{
  NewsCubit(this._newsRepository): super(const NewsState(loading: false));
  final NewsRepository _newsRepository;


  Future<bool> toggleSaved(NewsModel news) async  {
    final toggled = await _newsRepository.toggleSavedNews(news.id!, !news.saved);
    return toggled;

  }

}
