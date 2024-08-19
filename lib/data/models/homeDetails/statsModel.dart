class StatsModel {
  String? team_name;
  String? team_image;
  List? statistics;


  StatsModel(
      this.team_name, this.team_image,);

  StatsModel.frojson(Map<String, dynamic> mapToJson) {
    team_name = mapToJson ["team"]["name"];
    team_image  =mapToJson ["team"]["logo"];
statistics = mapToJson ["statistics"];
  }
}
