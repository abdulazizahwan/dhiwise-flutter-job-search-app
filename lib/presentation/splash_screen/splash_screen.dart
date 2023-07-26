import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onError.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 224),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getSize(90),
                              width: getSize(90),
                              padding: getPadding(
                                  left: 20, top: 28, right: 20, bottom: 28),
                              decoration: AppDecoration.fill1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(48),
                                    alignment: Alignment.center)
                              ]))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_jobfinder".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper.headlineLargeWhiteA700)),
                      Padding(
                          padding: getPadding(top: 5, bottom: 5),
                          child: Text("msg_explore_your_dream".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper.bodySmallLoraWhiteA700))
                    ]))));
  }
}
