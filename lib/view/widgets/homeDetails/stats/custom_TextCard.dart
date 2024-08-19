import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/statsModel.dart';

class Stats_TextCard extends StatelessWidget {
  const Stats_TextCard({
    super.key,
    required this.value, required this.type,
  });
  final String value;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 30,
      width: 135,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.greay))),
      child: Row(
        children: [
          Text(
            type,
            style: TextStyle(color: AppColor.width),
          ),
        const  SizedBox(width: 12,),
          Text(
            value,
            style: TextStyle(color: AppColor.width),
          ),
        ],
      ),
    );
  }
}
