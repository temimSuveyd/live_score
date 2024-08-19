import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class LineUp_appBar extends StatelessWidget {
  const LineUp_appBar({
    super.key, required this.image, required this.text, required this.formation,
  });
final String image;
final String text;
final String formation;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 70,
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(color: AppColor.primary, width: 4))),
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          Text(
          text,
            style: TextStyle(color: AppColor.width, fontSize: 20),
          ),
          const SizedBox(width: 10),
          Text(
         formation  ,
            style: TextStyle(color: AppColor.greay, fontSize: 14),
          ),
        const  Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage(image)),
        borderRadius: BorderRadius.circular(20),
        
        
            ),
          ),
          const SizedBox(width: 10),
        
        ],
      ),
    );
  }
}
