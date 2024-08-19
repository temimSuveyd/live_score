import 'package:flutter/widgets.dart';
import 'package:live_score/data/models/homeDetails/lineUpModel.dart';
import 'package:live_score/view/widgets/homeDetails/lineUp/custom_TextCard.dart';
import 'package:live_score/view/widgets/homeDetails/lineUp/custom_appBar.dart';
import 'package:live_score/view/widgets/homeDetails/lineUp/custom_titleCard.dart';

class LineUP_Card extends StatelessWidget {
  const LineUP_Card({
    super.key,
    required this.lineUpModel,
  });

  final LineUpModel lineUpModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LineUp_appBar(
            image: lineUpModel.team_image!,
            text: lineUpModel.team_name!,
            formation: lineUpModel.team_formation!),
        const LineUp_titleCard(text: "startXI"),
        ...List.generate(
          lineUpModel.team_xi!.length,
          (index) => LineUp_textCard(
              text: lineUpModel.team_xi![index]["player"]["name"],
              no: lineUpModel.team_xi![index]["player"]["number"].toString()),
        ),
        const LineUp_titleCard(text: "substitutes"),
        ...List.generate(
          lineUpModel.team_substitutes!.length,
          (index) => LineUp_textCard(
              text: lineUpModel.team_substitutes![index]["player"]["name"],
              no: lineUpModel.team_substitutes![index]["player"]["number"]
                  .toString()),
        ),
      const  LineUp_titleCard(text: "coach"),
        ...List.generate(
          1,
          (index) => LineUp_textCard(text: lineUpModel.team_coach!, no: ""),
        ),
      ],
    );
  }
}
