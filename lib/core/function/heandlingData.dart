import 'package:live_score/core/class/StatusRequest.dart';
handlingdat (response){
if (response is StatusRecuest) {
  return response;
}else {
  return StatusRecuest.success;
}
}