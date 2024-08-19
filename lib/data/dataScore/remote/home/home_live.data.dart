import 'package:live_score/core/class/crud/get.dart';
import 'package:live_score/core/constent/custom_Apis.dart';
import 'package:live_score/core/constent/custom_apiKeys.dart';

class Home_LiveData {
  GetData getDataC;
  Home_LiveData(this.getDataC);
  getLiveData() async {
    var response = await getDataC.getData(AppApis.live, {
"x-rapidapi-host":"v3.football.api-sports.io",
"x-rapidapi-key":AppKeys.apiKey,

    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
