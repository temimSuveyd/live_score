class HomeDetailsDataModel {
  String? team_1_Image;
  String? team_1_name;
  String? team_1_goal;
  String? team_2_Image;
  String? team_2_name;
  String? team_2_goal;
  String? countryImsge;
  String? countryName;
  String? team_1_id;
  String? team_2_id;

  HomeDetailsDataModel(
      this.team_1_Image,
      this.team_1_name,
      this.team_1_goal,
      this.team_2_Image,
      this.team_2_name,
      this.team_2_goal,
      this.countryImsge,
      this.countryName,
      this.team_1_id,
      this.team_2_id);

  HomeDetailsDataModel.fromJson(Map<String, dynamic> mapToJson) {
    countryImsge = mapToJson["league"]["logo"];
    countryName = mapToJson["league"]["name"];
    team_1_Image = mapToJson["teams"]["home"]["logo"];
    team_1_goal = mapToJson["goals"]["home"].toString();
    team_1_name = mapToJson["teams"]["home"]["name"];
    team_2_Image = mapToJson["teams"]["away"]["logo"];
    team_2_goal = mapToJson["goals"]["away"].toString();
    team_2_name = mapToJson["teams"]["away"]["name"];
    team_1_id = mapToJson["teams"]["home"]["id"].toString();
    team_2_id = mapToJson["teams"]["away"]["id"].toString();
  }
}
