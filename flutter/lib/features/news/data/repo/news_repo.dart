import '../../../../configurations/network/network.dart';

class NewsRepository{

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