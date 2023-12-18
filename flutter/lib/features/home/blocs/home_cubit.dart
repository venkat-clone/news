import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../configurations/constants/constants.dart';
import '../../app/data/models/news_model.dart';
import '../data/repo/home_repository.dart';

part 'home_cubit.freezed.dart';

part 'home_cubit.g.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState({
    @Default([]) List<NewsModel> newses,
    @Default([]) List<NewsModel> filteredNews,
    @Default(false) bool isLoading,
    @Default(0) int selectedIndex,
  }) = _HomeCubitState;

  factory HomeCubitState.fromJson(Map<String, dynamic> json) =>
      _$HomeCubitStateFromJson(json);
}

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(this._homeRepository) : super(const HomeCubitState());
  final HomeRepository _homeRepository;

  Future<void> getNews() async {
    emit(state.copyWith(isLoading: true));
    try {
      final newses = await _homeRepository.getNews();
      emit(state.copyWith(newses: newses, isLoading: false,selectedIndex: 0,filteredNews: newses));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      rethrow;
    }
  }

  selectCategory(int index) {
    final filteredNews = state.newses.where((element) {
      if (index == 0) {
        return true;
      }
      return element.category?.toLowerCase() ==
          categoryList[index - 1].toLowerCase();
    }).toList();

    emit(state.copyWith(selectedIndex: index,filteredNews: filteredNews));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    emit(state.copyWith(isLoading: false));
    super.onError(error, stackTrace);
  }

  void toggleSaved(int savingIndex) async  {

    final save = !state.newses[savingIndex].saved;
    final newNews = state.newses[savingIndex].copyWith(saved: save);
    final newses = state.newses.map((e) {
      if (e.id == newNews.id) {
        return newNews;
      }
      return e;
    }).toList();
    emit(state.copyWith(newses: newses));
    selectCategory(state.selectedIndex);
    final toggled = await _homeRepository.toggleSavedNews(newNews.id!, save);
    if(!toggled){
      final newses = state.newses.map((e) {
        if (e.id == newNews.id) {
          return newNews.copyWith(saved: !save);
        }
        return e;
      }).toList();
      emit(state.copyWith(newses: newses));
      selectCategory(state.selectedIndex);
    }

  }
}
