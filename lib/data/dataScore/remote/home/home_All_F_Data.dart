import 'package:live_score/core/class/crud/get.dart';
import 'package:live_score/core/constent/custom_Apis.dart';
import 'package:live_score/core/constent/custom_apiKeys.dart';

class Home_All_f_Data {
  GetData getDataC;
  Home_All_f_Data(this.getDataC);
  getLiveData(String date) async {
    var response = await getDataC.getData("${AppApis.all_f}$date", {
      "x-rapidapi-host": "v3.football.api-sports.io",
      "x-rapidapi-key": AppKeys.apiKey,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
