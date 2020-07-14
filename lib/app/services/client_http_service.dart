import 'package:dio/dio.dart';
import 'package:flutterarchiteture/app/interfaces/client_http_interface.dart';

class ClientHttpService implements IClientHttp {
  final Dio dio = Dio();

  @override
  Future get(String url) async {
    var response = await dio.get(url);
    return response.data;
  }
}
