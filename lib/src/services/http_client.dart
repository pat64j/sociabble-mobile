import 'package:dio/dio.dart';

class HttpClient{
  Dio _client;

  HttpClient(){
    _client = Dio();
    // _client.interceptors.add(_interceptor());
  }

  // Interceptor _interceptor(){
  //   return InterceptorsWrapper(
  //       onRequest: (RequestOptions request) async{
  //         final storageToken = 'hjdsg87dfau7sasgudgfksfsdfs';
  //
  //         if (storageToken != null) request.headers.addAll({
  //           "Authorization": 'Bearer $storageToken',
  //         });
  //
  //         return request;
  //       }
  //   );
  // }

  Future<Response> get(String url) => _client.get(url);

  Future<Response> post(String url, { dynamic body }){
    FormData formData = FormData.fromMap(body);
    return _client.post(url, data: formData);
  }

  Future<Response> put(String url, { dynamic body }){
    FormData formData = FormData.fromMap(body);
    return _client.put(url, data: formData);
  }

  Future<Response> delete(String url, { dynamic body }) => _client.delete(url);
}