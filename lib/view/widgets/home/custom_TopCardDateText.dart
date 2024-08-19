
import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class TopCard_DeteText extends StatelessWidget {
  const TopCard_DeteText({
    super.key, required this.short, required this.date,
  });


final String short;
final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          short,
          style: TextStyle(color: AppColor.greay),
        ),
        Text(
          "${date.day}/${date.month}"
     ,
          style: TextStyle(color: AppColor.greay),
        ),
      ],
    );
  }
}

