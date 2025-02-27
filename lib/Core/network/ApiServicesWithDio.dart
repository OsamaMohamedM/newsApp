import 'package:newsapp/Core/network/ApiServices.dart';

class ApiserviceswithdioImp extends ApiServices {
  ApiserviceswithdioImp(super.dio);
  @override
  Future<Map<String, dynamic>> fetchData(String endPoint) async {
    var result =
        await dio.get('$baseURL$endPoint&sortBy=popularity&apiKey=$apiKey');
    return result.data;
  }
}
