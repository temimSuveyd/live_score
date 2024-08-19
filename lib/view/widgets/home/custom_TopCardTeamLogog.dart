import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class TopCard_TeamLogo extends StatelessWidget {
  const TopCard_TeamLogo({
    super.key, required this.team_name, required this.team_image,
  });
final String team_name;
final String team_image;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
             SizedBox(
          height: 24,
          child: Row(
            children: [
    Container(
      height: 24,
      width: 24,
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  team_image))),
    ),const
    SizedBox(
      width: 10,
    ),
    Text(
   team_name,
      style: TextStyle(color: AppColor.width),
    ),
            
           
            ],
          ),
        )
            
      ],
    );
  }
}