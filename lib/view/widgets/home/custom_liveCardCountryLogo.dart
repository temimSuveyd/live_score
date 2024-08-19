import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class LiveCard_countryLogo extends StatelessWidget {
  const LiveCard_countryLogo({
    super.key, required this.countryImsge, required this.countryName,
  });
  final String countryImsge;
  final String countryName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(countryImsge),fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          countryName,
          style: TextStyle(
              fontSize: 12,
              color: AppColor.greay,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
