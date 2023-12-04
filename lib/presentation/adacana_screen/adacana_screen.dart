import 'controller/adacana_controller.dart';
import 'package:flutter/material.dart';
import 'package:neha_s_application1/core/app_export.dart';

class AdacanaScreen extends GetWidget<AdacanaController> {
  const AdacanaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 325.v,
                          width: 238.h,
                          onTap: () {
                            onTapImgLogo();
                          })
                    ]))));
  }

  /// Navigates to the loginOrSignupScreen when the action is triggered.
  onTapImgLogo() {
    Get.toNamed(
      AppRoutes.loginOrSignupScreen,
    );
  }
}
