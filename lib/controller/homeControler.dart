import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:live_score/core/class/StatusRequest.dart';
import 'package:live_score/core/constent/custom_routes.dart';
import 'package:live_score/core/function/heandlingData.dart';
import 'package:live_score/data/dataScore/remote/home/home_All_F_Data.dart';
import 'package:live_score/data/dataScore/remote/home/home_live.data.dart';

abstract class HomeController extends GetxController {
  getLiveScore();
  getAll_F();
  changeDate(DateTime date);
  goToDetails(
    String countryName,
    String countryImage,
    String team_1_Image,
    String team_1_goal,
    String team_1_name,
    String team_2_Image,
    String team_2_goal,
    String team_2_name,
    String fixtureId,
    String? league,
    String? season,
    String? team_1_id,
    String? team_2_id,
  );
}

class HomeControlerImp extends HomeController {
  List liveScore = [];
  List all_f = [];
  String? team1Id;
  String? team2Id;
  int index = 0;
  StatusRecuest? statusRecuest;
  Home_LiveData home_liveData = Home_LiveData(Get.find());
  Home_All_f_Data home_all_f_data = Home_All_f_Data(Get.find());
  String? dateTime = DateFormat('yyyy-MM-dd').format(DateTime.now());
  @override
  getLiveScore() async {
    liveScore.clear();
    statusRecuest = StatusRecuest.loading;
    update();
    var response = await home_liveData.getLiveData();
    statusRecuest = handlingdat(response);
    if (statusRecuest == StatusRecuest.success) {
      if (response != null) {
        liveScore.addAll(response["response"]);
        log(response["response"].toString());
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }

    update();
  }

  @override
  getAll_F() async {
    all_f.clear();
    statusRecuest = StatusRecuest.loading;
    update();
    var response = await home_all_f_data.getLiveData(dateTime!);
    statusRecuest = handlingdat(response);
    if (statusRecuest == StatusRecuest.success) {
      if (response != null) {
        all_f.addAll(response["response"]);
      } else {
        statusRecuest = StatusRecuest.failure;
      }
    }

    update();
  }

  @override
  goToDetails(
      countryName,
      countryImage,
      team_1_Image,
      team_1_goal,
      team_1_name,
      team_2_Image,
      team_2_goal,
      team_2_name,
      fixtureId,
      league,
      season,
      team_1_id,
      team_2_id) {
    Get.toNamed(AppRoutes.homeDetailsPage, arguments: {
      "countryName": countryName,
      "countryImage": countryImage,
      "team_1_Image": team_1_Image,
      "team_1_goal": team_1_goal,
      "team_1_name": team_1_name,
      "team_2_Image": team_2_Image,
      "team_2_goal": team_2_goal,
      "team_2_name": team_2_name,
      "fixtureId": fixtureId,
      "league": league,
      "season": season,
      "team_1_id": team_1_id,
      "team_2_id": team_2_id,
    });
  }

  @override
  changeDate(date) {
    dateTime = DateFormat('yyyy-MM-dd').format(date);
    log(dateTime!);
    getAll_F();
    update();
  }

  @override
  void onInit() {
    getAll_F();
    getLiveScore();
    super.onInit();
  }
}
