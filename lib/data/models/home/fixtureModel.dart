class All_F_model {
  String? team_1_name;
  String? team_1_Image;
  String? team_1_goal;
  String? team_2_name;
  String? team_2_Image;
  String? team_2_goal;
  String? short;
  DateTime? data;

  All_F_model(
    this.data,
    this.short,
    this.team_1_Image,
    this.team_1_goal,
    this.team_1_name,
    this.team_2_Image,
    this.team_2_goal,
    this.team_2_name,
  );
  All_F_model.fromJson(Map<String, dynamic> mapToJson) {
    team_1_Image = mapToJson["teams"]["home"]["logo"];
    team_1_goal = mapToJson["goals"]["home"].toString();
    team_1_name = mapToJson["teams"]["home"]["name"];
    team_2_Image = mapToJson["teams"]["away"]["logo"];
    team_2_goal = mapToJson["goals"]["away"].toString();
    team_2_name = mapToJson["teams"]["away"]["name"];
    short = mapToJson["fixture"]["status"]["short"];
    data = DateTime.parse(mapToJson["fixture"]["date"]);
  }
}
