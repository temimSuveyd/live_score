import 'package:live_score/core/class/crud/get.dart';


class FixtureData {
  GetData getDataC;
  FixtureData(this.getDataC);
  getFixtures(String id) async {
    var response = await getDataC.getData("https://v3.football.api-sports.io/fixtures?id=${id}",{});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
