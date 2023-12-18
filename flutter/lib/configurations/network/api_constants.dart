import 'package:flutter/foundation.dart';

const baseUrl = kDebugMode ? 'http://192.168.29.41:3000' : 'http://165.232.115.60:8000';

const api = '$baseUrl/api';

const newsEndpoint = '$api/news';

const userEndpoint = '$api/user';

const loginEndpoint = '$userEndpoint/login';

const queryEndpoint = '$newsEndpoint/search';

const favoriteEndpoint = '$userEndpoint/saved';