import 'package:neha_s_application1/core/app_export.dart';
import 'package:neha_s_application1/presentation/home_screen/models/home_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
}
