class FixturesModel {
  String? team_1_Image;
  String? team_1_name;
  String? team_2_Image;
  String? team_2_name;

  String? date;
  String? no;

  FixturesModel(
      this.team_1_Image,
      this.team_1_name,
      this.team_2_Image,
      this.team_2_name,
      this.date,
      this.no,
);

  FixturesModel.fromJson(Map<String, dynamic> mapToJson) {
    team_1_Image = mapToJson["teams"]["home"]["logo"];
    team_1_name = mapToJson["teams"]["home"]["name"];
    team_2_Image = mapToJson["teams"]["away"]["logo"];
    team_2_name = mapToJson["teams"]["away"]["name"];
    date = mapToJson["fixture"]["date"];
    no = mapToJson["fixture"]["status"]["short"];
  }
}
