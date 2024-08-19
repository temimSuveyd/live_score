import 'package:live_score/core/class/crud/get.dart';
import 'package:live_score/core/constent/custom_Apis.dart';
import 'package:live_score/core/constent/custom_apiKeys.dart';

class H2HData {
  GetData getDataC;
  H2HData(this.getDataC);
  getData(String id_2,String id_1) async {
    var response = await getDataC
        .getData("${AppApis.h2h}$id_1-$id_2", {
      "x-rapidapi-host": "v3.football.api-sports.io",
      "x-rapidapi-key": AppKeys.apiKey,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
