import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_news/features/app/data/models/filter_model.dart';
import 'package:my_news/features/app/data/models/news_model.dart';
import 'package:my_news/features/search/data/repo/search_repo.dart';

part 'search_cubit.freezed.dart';
part 'search_cubit.g.dart';

@freezed
class SearchCubitState with _$SearchCubitState {
  const factory SearchCubitState({
    required List<NewsModel> filtered,
    required FilterModel filter,
    @Default(false) bool isLoading,
  }) = _SearchCubitModel;

  factory SearchCubitState.fromJson(Map<String, dynamic> json) =>
      _$SearchCubitStateFromJson(json);
}


class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchRepo) : super(const SearchCubitState(filtered: [], filter: FilterModel()));

  final SearchRepo searchRepo;
  final Debouncer _deBouncer = Debouncer();

  void applySearch(String value) {

    _deBouncer.debounce(duration: const Duration(seconds: 2), onDebounce: () async {
      final invalid = value.isEmpty || value.length<3;
      emit(state.copyWith(filter: state.filter.copyWith(query: value), isLoading: !invalid));
      if(invalid) {
        return emit(state.copyWith(filtered: []));
      }
      try{
        final newses = await searchRepo.getFilteredNews(state.filter);
        emit(state.copyWith(filtered: newses,isLoading: false));
      } catch(e) {
        emit(state.copyWith(filtered: [],isLoading: false));
        rethrow;
      }

    });
  }

  void applyFilters(FilterModel filter) {
    emit(state.copyWith(filter: filter));
    if(state.filter.query!=null) {
      applySearch(state.filter.query!);
    }
  }

  @override
  Future<void> close() {
    _deBouncer.cancel();
    return super.close();
  }



}
