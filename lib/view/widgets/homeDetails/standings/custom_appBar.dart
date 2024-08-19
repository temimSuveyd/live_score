import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class Standings_appBar extends StatelessWidget {
  const Standings_appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.greay))),
      height: 50,
      child: Row(
        children: [    Text(
            "#",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),  const    SizedBox(
            width: 20,
          ),
          Text(
            "Club",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),
        const  Spacer(),
          Text(
            "PL",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            width: 20,
          ),
          Text(
            "W",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            width: 20,
          ),
          Text(
            "D",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),
      const    SizedBox(
            width: 20,
          ),
          Text(
            "GD",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            width: 20,
          ),
          Text(
            "PTS",
            style: TextStyle(color: AppColor.greay,fontWeight: FontWeight.bold),
          ),   const  SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
