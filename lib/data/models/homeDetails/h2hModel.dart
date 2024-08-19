class H2HModel {
  String? team_1_goal;
  String? team_2_goal;
  String? team_1_name;
  String? team_1_image;
  String? team_2_name;
  String? team_2_image;
  String? stats;
  String? date;

  H2HModel(
      this.team_1_goal,
      this.team_1_name,
      this.team_1_image,
      this.team_2_goal,
      this.team_2_name,
      this.team_2_image,
      this.stats,
      this.date);

  H2HModel.frojson(Map<String, dynamic> mapToJson) {
    team_1_goal = mapToJson["goals"]["home"].toString();
    team_1_name = mapToJson["teams"]["home"]["name"];
    team_1_image = mapToJson["teams"]["home"]["logo"];
    team_2_goal = mapToJson["goals"]["away"].toString();
    team_2_image = mapToJson["teams"]["away"]["logo"];
    team_2_name = mapToJson["teams"]["away"]["name"];
    stats = mapToJson["fixture"]["status"]["short"];
    date = mapToJson["fixture"]["date"];
  }
}
