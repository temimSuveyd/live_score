import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/h2hModel.dart';
import 'package:live_score/view/widgets/homeDetails/h2h/custom_Date_teype.dart';
import 'package:live_score/view/widgets/homeDetails/h2h/custom_teamsGoals.dart';
import 'package:live_score/view/widgets/homeDetails/h2h/custom_teamsLogos.dart';

class H2H_Card extends StatelessWidget {
  const H2H_Card({
    super.key,
    required this.h2hModel,
  });
  final H2HModel h2hModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColor.cardsC,
      ),
      child: Row(
        children: [
          H2H_date_type(
            data: h2hModel.date!,
            shortStatus: h2hModel.stats!,
          ),
          const SizedBox(
            width: 12,
          ),
          H2H_teams_logos(
            tema_1_name: h2hModel.team_1_name!,
            tema_2_name: h2hModel.team_1_name!,
            tema_1_image: h2hModel.team_1_image!,
            tema_2_image: h2hModel.team_2_image!,
          ),
          const Spacer(),
          H2H_teams_goals(
            team_1_goal: h2hModel.team_1_goal!,
            team_2_goal: h2hModel.team_2_goal!,
          ),
        ],
      ),
    );
  }
}
