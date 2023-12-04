import 'package:neha_s_application1/core/app_export.dart';
import 'package:neha_s_application1/presentation/wish_list_screen/models/wish_list_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WishListScreen.
///
/// This class manages the state of the WishListScreen, including the
/// current wishListModelObj
class WishListController extends GetxController {
  TextEditingController taskFieldController = TextEditingController();

  TextEditingController filesizeController = TextEditingController();

  Rx<WishListModel> wishListModelObj = WishListModel().obs;

  @override
  void onClose() {
    super.onClose();
    taskFieldController.dispose();
    filesizeController.dispose();
  }
}
