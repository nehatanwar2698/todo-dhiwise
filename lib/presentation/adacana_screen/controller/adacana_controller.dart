import 'package:neha_s_application1/core/app_export.dart';
import 'package:neha_s_application1/presentation/adacana_screen/models/adacana_model.dart';

/// A controller class for the AdacanaScreen.
///
/// This class manages the state of the AdacanaScreen, including the
/// current adacanaModelObj
class AdacanaController extends GetxController {
  Rx<AdacanaModel> adacanaModelObj = AdacanaModel().obs;
}
