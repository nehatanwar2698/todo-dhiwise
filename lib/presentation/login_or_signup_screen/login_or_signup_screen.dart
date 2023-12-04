import 'controller/login_or_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:neha_s_application1/core/app_export.dart';
import 'package:neha_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:neha_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neha_s_application1/widgets/custom_elevated_button.dart';

class LoginOrSignupScreen extends GetWidget<LoginOrSignupController> {
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 25.v),
                child: Column(children: [
                  _buildPageHeader(),
                  SizedBox(height: 31.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoGray5001,
                      height: 105.v,
                      width: 117.h),
                  SizedBox(height: 33.v),
                  Text("lbl_get_in_through".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 33.v),
                  CustomElevatedButton(
                      text: "lbl_sign_up".tr,
                      onPressed: () {
                        onTapSignUp();
                      }),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.fillDeepOrange,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallSecondaryContainer,
                      onPressed: () {
                        onTapLogin();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(49.h, 16.v, 302.h, 16.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildPageHeader() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 208.h,
          child: Text("msg_welcome_to_our_community".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.18))),
      SizedBox(height: 2.v),
      Container(
          width: 281.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_our_community_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.67)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
