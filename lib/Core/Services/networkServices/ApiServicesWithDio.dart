import 'package:newsapp/Core/Services/networkServices/ApiServices.dart';

class ApiserviceswithdioImp extends ApiServices {
  ApiserviceswithdioImp(super.dio);
  @override
  Future<Map<String, dynamic>> fetchDataUs(String endPoint) async {
    var result =
        await dio.get('$baseURL$endPoint&sortBy=popularity&apiKey=$apiKey');

    return result.data;
  }

  Future<Map<String, dynamic>> fetchDatawithCategory(String endPoint) async {
    var result =
        await dio.get('$baseURL$endPoint&sortBy=popularity&apiKey=$apiKey');

    return result.data;
  }
}
