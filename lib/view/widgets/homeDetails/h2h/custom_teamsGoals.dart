import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class H2H_teams_goals extends StatelessWidget {
  const H2H_teams_goals({
    super.key, required this.team_1_goal, required this.team_2_goal,
  });
final String team_1_goal;
final String team_2_goal;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        team_1_goal,
          style: TextStyle(color: AppColor.width),
        ),
        Spacer(),
        Text(
         team_2_goal,
          style: TextStyle(color: AppColor.width),
        ),
      ],
    );
  }
}

