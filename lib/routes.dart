import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:live_score/core/constent/custom_routes.dart';
import 'package:live_score/view/pages/Home.dart';
import 'package:live_score/view/pages/homeDetails.dart';


List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => const HomePage()),
  GetPage(name: AppRoutes.homeDetailsPage, page: () => const HomeDetailsPage()),
];
