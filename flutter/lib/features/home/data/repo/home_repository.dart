import 'package:my_news/features/app/data/models/news_model.dart';
import '../../../../configurations/network/network.dart';

class HomeRepository {
  Future<List<NewsModel>> getNews() async {
    final response = await NetworkManager.instance.perform(NetworkRequest(
      '$newsEndpoint/list',
      RequestMethod.get,
      isAuthorized: true,
    ));
    final newses = (response.data as List<dynamic>)
        .map((e) => NewsModel.fromJson(e))
        .toList();
    return newses;
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
