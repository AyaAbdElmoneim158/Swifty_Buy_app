import 'package:dio/dio.dart';
import '../utils/helpers/cache_helper.dart';
import 'end_points.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["lang"] = 'ar';
    options.headers["Content-Type"] = 'application/json; charset=utf-8';
    options.headers["Authorization"] = CacheHelper.getData(key: ApiKey.token);
    // EndPoint.authorization;
    super.onRequest(options, handler);
  }
}
