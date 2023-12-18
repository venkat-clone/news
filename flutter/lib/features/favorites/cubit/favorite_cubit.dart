import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

import '../data/repo/favorite_repo.dart';

part 'favorite_cubit.freezed.dart';

part 'favorite_cubit.g.dart';

@freezed
class CubitFavoriteState with _$CubitFavoriteState {
  const factory CubitFavoriteState({
    @Default(false) bool isLoading,
    @Default([]) List<NewsModel> favorites,
    @Default([]) List<NewsModel>? searched,
    String? query,
  }) = _CubitFavoriteState;

  factory CubitFavoriteState.fromJson(Map<String, dynamic> json) =>
      _$CubitFavoriteStateFromJson(json);
}

class FavoriteCubit extends Cubit<CubitFavoriteState> {
  FavoriteCubit(this.favoriteRepo) : super(const CubitFavoriteState());

  final FavoriteRepo favoriteRepo;

  final Debouncer deBouncer = Debouncer();

  void getFavorites() async {
    emit(state.copyWith(isLoading: true));
    try{
      final result = await FavoriteRepo().getFavoriteNews();
      emit(state.copyWith(isLoading: false, favorites: result));
      print(result.length);
    }catch(e){
      emit(state.copyWith(isLoading: false));
      rethrow;
    }
  }

  void removeFavorite(int newsId) async {
    final result = await FavoriteRepo().removeFavoriteNews(newsId);
    if (result != null) {
      getFavorites();
    }
  }

  void search(String query) {
    emit(state.copyWith(query: query));
    deBouncer.debounce(
        duration: const Duration(seconds: 2),
        onDebounce: () {
          if(query.isEmpty){
            return emit(state.copyWith(searched: null));
          }
          final filteredNews = state.favorites
              .where((element) =>
                  element.title.toLowerCase().contains(query.toLowerCase()) ||
                  element.description
                      .toLowerCase()
                      .contains(query.toLowerCase()) ||
                  element.content.toLowerCase().contains(query.toLowerCase()))
              .toList();
          emit(state.copyWith(searched: filteredNews));
        });
  }


  void toggleSaved(int savingIndex) async  {

    final save = !state.favorites[savingIndex].saved;
    final newNews = state.favorites[savingIndex].copyWith(saved: save);
    final newses = state.favorites.map((e) {
      if (e.id == newNews.id) {
        return newNews;
      }
      return e;
    }).toList();
    emit(state.copyWith(favorites: newses));

    final toggled = await favoriteRepo.toggleSavedNews(newNews.id!, save);
    if(!toggled){
      final newses = state.favorites.map((e) {
        if (e.id == newNews.id) {
          return newNews.copyWith(saved: !save);
        }
        return e;
      }).toList();
      emit(state.copyWith(favorites: newses));
    }

  }
}
