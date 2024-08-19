import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:live_score/controller/homeDetailsController.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/statsModel.dart';
import 'package:live_score/view/widgets/homeDetails/stats/custom_Card.dart';

class Stats extends GetView<HomeDetailsControllerImp> {
  const Stats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: AppColor.cardsC,
      child: Column(
        children: [          
          Row(
            children: [
              Stats_Card(
                statsModle: StatsModel.frojson(controller.statsDataList[0]),
              ),
              const Spacer(),
              Stats_Card(
                statsModle: StatsModel.frojson(controller.statsDataList[1]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
