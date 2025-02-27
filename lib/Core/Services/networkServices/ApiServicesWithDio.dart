import 'package:newsapp/Core/Services/networkServices/ApiServices.dart';

class ApiserviceswithdioImp extends ApiServices {
  ApiserviceswithdioImp(super.dio);
  @override
  Future<Map<String, dynamic>> fetchDatawithUs(String endPoint) async {
    var result =
        await dio.get('$baseURL$endPoint&sortBy=popularity&apiKey=$apiKey');

    return result.data;
  }
  
}
