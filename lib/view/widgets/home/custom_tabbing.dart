
import 'package:flutter/material.dart';
import 'package:live_score/core/constent/custom_colors.dart';
import 'package:live_score/view/widgets/home/custom_tabbingCard.dart';

class Home_Tabbing extends StatelessWidget {
  const Home_Tabbing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(height: 30,child: ListView.builder(
       itemCount: 5,
       scrollDirection: Axis.horizontal,
             itemBuilder: (context, index) => 
         Tabbing_Card(),),),
    ),);
  }
}
