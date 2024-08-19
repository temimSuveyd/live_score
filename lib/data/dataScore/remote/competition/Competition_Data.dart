import 'package:live_score/core/class/crud/get.dart';
import 'package:live_score/core/constent/custom_Apis.dart';

class CompetitionData {
  GetData getDataC;
  CompetitionData(this.getDataC);
  getCompetitions() async {
    var response = await getDataC.getData(
      AppApis.leagues, {}
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
