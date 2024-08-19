import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:live_score/core/class/StatusRequest.dart';
import 'package:http/http.dart' as http;
import 'package:live_score/core/function/check%C4%B0nternet.dart';

class GetData {
  Future<Either<StatusRecuest, Map>> getData(
      String linkUrl, Map<String, String> data) async {
    if (await CheckInternet()) {
      var response = await http.get(Uri.parse(linkUrl),headers: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map recuestBody = jsonDecode(response.body);
        return right(recuestBody);
      } else {
        return left(StatusRecuest.serverFailure);
      }
    } else {
      return left(StatusRecuest.offlineFailure);
    }
  }
}
