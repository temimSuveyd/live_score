class LineUpModel {
  String? team_name;
  String? team_image;
  String? team_coach;
  List? team_xi;
  List? team_substitutes;
  String? team_formation;

  LineUpModel(this.team_formation, this.team_xi, this.team_substitutes,
      this.team_name, this.team_image, this.team_coach);

  LineUpModel.frojson(Map<String, dynamic> mapToJson) {
    team_name = mapToJson ["team"]["name"];
    team_image  =mapToJson ["team"]["logo"];
    team_formation = mapToJson["formation"].toString();
    team_xi = mapToJson["startXI"];
    team_substitutes = mapToJson["substitutes"];
    team_coach = mapToJson["coach"]["name"];
  }
}
