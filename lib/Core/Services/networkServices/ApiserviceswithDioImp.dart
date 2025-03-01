import 'package:newsapp/Core/Services/networkServices/ApiServices.dart';

class ApiserviceswithDioImp extends ApiServices {
  ApiserviceswithDioImp(super.dio);
  @override
  Future<Map<String, dynamic>> fetchData(String endPoint) async {
    var result =
        await dio.get('$baseURL$endPoint&sortBy=popularity&apiKey=$apiKey');

    return result.data;
  }
}
