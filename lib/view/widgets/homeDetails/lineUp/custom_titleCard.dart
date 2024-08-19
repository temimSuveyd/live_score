import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class LineUp_titleCard extends StatelessWidget {
  const LineUp_titleCard({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.only(left: 20),
          height: 50,
          decoration: BoxDecoration(
    color: AppColor.greay,
      border: Border(bottom: BorderSide(color: AppColor.greay))),
          child: Row(
    children: [
      Text(
       text,
        style: TextStyle(color: AppColor.width,fontSize: 18,fontWeight: FontWeight.bold),
      )
    ],
          ),
        );
  }
}
