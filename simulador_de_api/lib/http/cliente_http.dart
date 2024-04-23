import 'package:http/http.dart' as http;

abstract class IHttpClient {
  Future get({required String url});
}

class HttpClient implements IHttpClient {

final Client = http.Client();

  @override
  Future get({required String url}) async {
    return await Client.get(Uri.parse(url));
  }
}