import 'package:my_news/features/app/data/models/filter_model.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

import '../../../../configurations/network/api_response.dart';
import '../../../../configurations/network/network.dart';

class SearchRepo {
  Future<List<NewsModel>> getFilteredNews(FilterModel filterModel) async {
    final response = await NetworkManager.instance.perform(
        NetworkRequest(queryEndpoint, RequestMethod.get, isAuthorized: true,
            data: filterModel.toJson()));

    if(response.status==Status.ok) {
      return (response.data as List).map((e) => NewsModel.fromJson(e)).toList();
    }

    return [];
  }
}
