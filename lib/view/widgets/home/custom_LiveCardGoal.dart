
import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class LiveCard_TeamGoal extends StatelessWidget {
  const LiveCard_TeamGoal({
    super.key, required this.team_1_goal, required this.team_2_goal,
  });
final String team_1_goal;
final String team_2_goal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
           team_1_goal,
            style: TextStyle(
                fontSize: 20,
                color: AppColor.width,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            "-",
            style: TextStyle(
                fontSize: 20,
                color: AppColor.width,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            team_2_goal,
            style: TextStyle(
                fontSize: 20,
                color: AppColor.width,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
