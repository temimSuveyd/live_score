

import 'package:flutter/widgets.dart';
import 'package:live_score/core/constent/custom_colors.dart';

class H2H_date_type extends StatelessWidget {
  const H2H_date_type({
    super.key, required this.shortStatus, required this.data,
  });
final String shortStatus;
final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "FT",
          style: TextStyle(color: AppColor.greay, fontSize: 18),
        ),
        SizedBox(height: 5),
        Text(
          "12/4",
          style: TextStyle(color: AppColor.greay, fontSize: 18),
        ),
      ],
    );
  }
}
