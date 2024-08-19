import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/data/models/homeDetails/statsModel.dart';
import 'package:live_score/view/widgets/homeDetails/stats/custom_TextCard.dart';
import 'package:live_score/view/widgets/homeDetails/stats/custom_logo.dart';

class Stats_Card extends GetView<HomeDetailsControllerImp> {
  const Stats_Card({
    super.key,
    required this.statsModle,
  });

  final StatsModel statsModle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stats_logo(
          image: statsModle.team_image!,
          text: statsModle.team_name!,
        ),
        const SizedBox(
          height: 20,
        ),
        ...List.generate(
          statsModle.statistics!.length,
          (index) => Stats_TextCard(
            type: statsModle.statistics![index]["type"],
            value: statsModle.statistics![index]["value"].toString(),
          ),
        ),
      ],
    );
  }
}
