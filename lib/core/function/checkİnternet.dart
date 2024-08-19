import 'dart:io';

CheckInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");

    if (result.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
