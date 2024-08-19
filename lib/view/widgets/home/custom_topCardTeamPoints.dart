import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class TopCard_TeamsPoints extends StatelessWidget {
  const TopCard_TeamsPoints({
    super.key, required this.team_goole,
  });
final String team_goole;
  @override
  Widget build(BuildContext context) {
    return  Text(
                          team_goole,
                          style: TextStyle(color: AppColor.width),
                        );
}
}



