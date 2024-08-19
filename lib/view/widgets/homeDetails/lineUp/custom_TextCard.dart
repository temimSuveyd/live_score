import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/data/models/homeDetails/lineUpModel.dart';

class LineUp_textCard extends StatelessWidget {
  const LineUp_textCard({
    super.key,
    required this.text,
    required this.no,
  });
  final String text;
  final String no;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 45,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.greay))),
      child: Row(
        children: [
          Text(
            no,
            style: TextStyle(color: AppColor.width),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: TextStyle(color: AppColor.width),
          ),
        ],
      ),
    );
  }
}
