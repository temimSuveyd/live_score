import 'package:get/get.dart';
import 'package:live_score/core/class/StatusRequest.dart';
import 'package:live_score/core/function/heandlingData.dart';
import 'package:live_score/data/dataScore/remote/homeDetails/h2hData.dart';
import 'package:live_score/data/dataScore/remote/homeDetails/lineUpData.dart';
import 'package:live_score/data/dataScore/remote/homeDetails/standingsData.dart';
import 'package:live_score/data/dataScore/remote/homeDetails/statsData.dart';

abstract class HomeDetailsController extends GetxController {
  changeTapping(int indexC);
  initData();
  getLineUpData();
  getStatsData();
  getH2HData();
  getStandingsData();
}

class HomeDetailsControllerImp extends HomeDetailsController {
  String? countryName;
  String? countryImage;

  String? team_1_Image;
  String? team_1_goal;
  String? team_1_name;
  String? team_2_Image;
  String? team_2_goal;
  String? team_2_name;
  String? fixtureId;
  String? league;
  String? season;
  String? team_1_id;
  String? team_2_id;

  int index = 0;
  List lineUpDataList = [];
  List statsDataList = [];
  List h2hDataList = [];
  List standingsDataList = [];
  StatusRecuest? statusRecuest;
  LineUpData lineUpData = LineUpData(Get.find());
  StatsData statsData = StatsData(Get.find());
  H2HData h2hData = H2HData(Get.find());
  StandingsData standingsData = StandingsData(Get.find());
  @override
  changeTapping(indexC) {
    index = indexC;
    update();
  }

  @override
  initData() {
    team_1_id = Get.arguments["team_1_id"];
    team_2_id = Get.arguments["team_2_id"];
    countryImage = Get.arguments["countryImage"];
    countryName = Get.arguments["countryName"];
    team_1_Image = Get.arguments["team_1_Image"];
    team_1_goal = Get.arguments["team_1_goal"];
    team_1_name = Get.arguments["team_1_name"];
    team_2_Image = Get.arguments["team_2_Image"];
    team_2_goal = Get.arguments["team_2_goal"];
    team_2_name = Get.arguments["team_2_name"];
    fixtureId = Get.arguments["fixtureId"];
  }

  @override
  getLineUpData() async {
    lineUpDataList.clear();
    statusRecuest = StatusRecuest.loading;
    update();
    var response = await lineUpData.getData(fixtureId.toString());
    statusRecuest = handlingdat(response);
    if (statusRecuest == StatusRecuest.success) {
      if (response["response"] != null) {
        lineUpDataList.addAll(response["response"]);
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }

    update();
  }

  @override
  getStatsData() async {
    statusRecuest = StatusRecuest.loading;
    update();
    var response = await statsData.getData(fixtureId.toString());
    statusRecuest = handlingdat(response);
    if (statusRecuest == StatusRecuest.success) {
      if (response["response"] != null) {
        statsDataList.addAll(response["response"]);
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }

    update();
  }

  @override
  getH2HData() async {
    h2hDataList.clear();
    statusRecuest = StatusRecuest.loading;
    update();
    var response =
        await h2hData.getData(team_1_id.toString(), team_2_id.toString());
    statusRecuest = handlingdat(response);
    if (statusRecuest == StatusRecuest.success) {
      if (response["response"] != null) {
        h2hDataList.addAll(response["response"]);
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }
    update();
  }

  @override
  getStandingsData() async {
    statusRecuest = StatusRecuest.loading;
    standingsDataList.clear();
    update();
    var response =
        await standingsData.getData(league.toString(), season.toString());
    if (statusRecuest == StatusRecuest.success) {
      if (response["response"] != null) {
        standingsDataList
            .addAll(response["response"][0]["league"]["standings"][0]);
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    initData();
    getLineUpData();
    getH2HData();
    getStatsData();
    getStandingsData();
    super.onInit();
  }
}
