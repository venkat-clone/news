import 'package:my_news/configurations/network/network.dart';
import 'package:my_news/features/app/data/models/news_model.dart';

class FavoriteRepo {
  Future<List<NewsModel>> getFavoriteNews() async {
    final result = await NetworkManager.instance.perform(NetworkRequest(
        favoriteEndpoint, RequestMethod.get,
        isAuthorized: true));
    if (result.status == Status.ok) {
      return (result.data as List<dynamic>)
          .map((e) => NewsModel.fromJson(e))
          .toList();
    }
    return [];
  }

  Future<dynamic> removeFavoriteNews(int newsId) async {
    final result = await NetworkManager.instance.perform(NetworkRequest(
        '$favoriteEndpoint/$newsId}', RequestMethod.delete,
        isAuthorized: true));
    if (result.status == Status.ok) {
      return result.response;
    }
    return null;
  }

  Future<bool> toggleSavedNews(int newsId,bool save) async {
    try{
      final response = await NetworkManager.instance.perform(NetworkRequest(
        '$newsEndpoint/${save?'save':'unsave'}/$newsId',
        RequestMethod.get,
        isAuthorized: true,
      ));
      return response.data["success"];
    }
    catch(e){
      rethrow;
    }
  }
}
