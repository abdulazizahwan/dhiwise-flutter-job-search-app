import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';
import 'package:job_search_app/widgets/custom_elevated_button.dart';
import 'package:job_search_app/widgets/custom_icon_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 51, right: 24, bottom: 51),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 60,
                          width: 60,
                          padding: getPadding(all: 13),
                          child: CustomImageView(svgPath: ImageConstant.imgJf)),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(327),
                                  margin: getMargin(top: 80),
                                  decoration: AppDecoration.fill.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup,
                                            height: getVerticalSize(178),
                                            width: getHorizontalSize(320),
                                            margin: getMargin(top: 4))
                                      ])))),
                      Padding(
                          padding: getPadding(top: 51),
                          child: Text("msg_welcome_job_hunter".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.headlineLarge)),
                      Container(
                          width: getHorizontalSize(299),
                          margin: getMargin(top: 15, right: 28, bottom: 5),
                          child: Text("msg_i_m_happy_to_see".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_start_explore_jobs".tr,
                margin: getMargin(left: 16, right: 16, bottom: 66),
                buttonStyle: ButtonThemeHelper.fillOnError.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(56)))),
                buttonTextStyle: TextThemeHelper.titleMediumWhiteA700_1,
                onTap: () {
                  navigateToHome();
                })));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  navigateToHome() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
