class Standingsmodel {
  String? name;
  String? rank;
  String? played;
  String? win;
  String? draw;
  String? points;
  String? goals;

  Standingsmodel(
    this.name,
    this.rank,
    this.played,
    this.win,
    this.draw,
    this.points,
    this.goals,
  );

  Standingsmodel.frojson(Map<String, dynamic> mapToJson) {
    name = mapToJson["team"]["name"];
    rank = mapToJson["rank"].toString();
    points = mapToJson["points"].toString();
    played = mapToJson["all"]["played"].toString();
    win = mapToJson["all"]["win"].toString();
    draw = mapToJson["all"]["draw"].toString();
    goals = mapToJson["all"]["goals"]["for"].toString();
    ;
  }
}
