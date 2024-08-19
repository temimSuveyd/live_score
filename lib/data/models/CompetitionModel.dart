class CompetitionModel {
  String? image;
  String? shortName;
  String? league;
  String? id;


  CompetitionModel(this.shortName, this.image, this.league,this.id);

  CompetitionModel.frojson(Map<String, dynamic> mapToJson) {
    image = mapToJson["image_path"];
    shortName = mapToJson["short_code"];
    league = mapToJson["name"];
      id = mapToJson["id"].toString();
  }
}
