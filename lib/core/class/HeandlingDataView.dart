import 'package:flutter/material.dart';
import 'package:live_score/core/class/StatusRequest.dart';
import 'package:lottie/lottie.dart';

class Heandlingdataview extends StatelessWidget {
  const Heandlingdataview(
      {super.key, required this.statusRecuest, required this.widget});
  final StatusRecuest statusRecuest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    if (statusRecuest == StatusRecuest.loading) {
      return Center(child: Lottie.asset("assets/loading_logo.json"));
    } else if (statusRecuest == StatusRecuest.success) {
      return widget;
    } else if (statusRecuest == StatusRecuest.offlineFailure) {
      return Center(child: Lottie.asset("assets/no_internet.json"));
    } else if (statusRecuest == StatusRecuest.serverFailure) {
      return Center(child: Lottie.asset("assets/server_failur.json"));
    } else {
      return  Container(
        child: Text("Have a Erro"),
      );
    }
  }
}
