import 'package:live_score/core/class/crud/get.dart';
import 'package:live_score/core/constent/custom_apiKeys.dart';

class StandingsData {
  GetData getDataC;
  StandingsData(this.getDataC);
  getData(String league,String season) async {
    var response = await getDataC
        .getData("https://v3.football.api-sports.io/standings?league=$league&season=$season", {
      "x-rapidapi-host": "v3.football.api-sports.io",
      "x-rapidapi-key": AppKeys.apiKey,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
