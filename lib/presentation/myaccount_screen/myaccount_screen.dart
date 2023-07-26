import '../myaccount_screen/widgets/myaccount_item_widget.dart';
import 'controller/myaccount_controller.dart';
import 'models/myaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';
import 'package:job_search_app/widgets/custom_outlined_button.dart';

class MyaccountScreen extends GetWidget<MyaccountController> {
  const MyaccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Expanded(
                                child: SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.fill,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 27),
                                                  child: Text(
                                                      "lbl_my_account".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .titleLargeWhiteA700)),
                                              Padding(
                                                  padding: getPadding(top: 23),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.blue5001))
                                            ])))),
                            Padding(
                                padding: getPadding(left: 16, top: 24),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfilepicture,
                                      height: getSize(72),
                                      width: getSize(72),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(36))),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 12, bottom: 11),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_muhamad_fadli".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextThemeHelper
                                                    .titleMedium18),
                                            Padding(
                                                padding: getPadding(top: 9),
                                                child: Text(
                                                    "msg_fadly00_gmail_com".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ]))
                                ])),
                            Padding(
                                padding: getPadding(top: 32),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(1));
                                    },
                                    itemCount: controller.myaccountModelObj
                                        .value.myaccountItemList.value.length,
                                    itemBuilder: (context, index) {
                                      MyaccountItemModel model = controller
                                          .myaccountModelObj
                                          .value
                                          .myaccountItemList
                                          .value[index];
                                      return MyaccountItemWidget(model);
                                    }))),
                            CustomOutlinedButton(
                                text: "lbl_log_out".tr,
                                margin:
                                    getMargin(left: 16, top: 226, right: 16),
                                buttonStyle: ButtonThemeHelper.outlinePrimary
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(double.maxFinite,
                                                    getVerticalSize(56)))),
                                buttonTextStyle:
                                    TextThemeHelper.titleMediumPrimary,
                                alignment: Alignment.center),
                            Container(
                                height: getVerticalSize(357),
                                width: double.maxFinite,
                                margin: getMargin(top: 25),
                                child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: getVerticalSize(93),
                                              width: double.maxFinite,
                                              decoration: AppDecoration.fill1,
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: SizedBox(
                                                            width: double
                                                                .maxFinite,
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: appTheme
                                                                    .blue5001))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    61),
                                                            width:
                                                                getHorizontalSize(
                                                                    75),
                                                            margin: getMargin(
                                                                right: 102),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(59),
                                                                          width: getHorizontalSize(75),
                                                                          padding: getPadding(left: 25, top: 17, right: 25, bottom: 17),
                                                                          decoration: AppDecoration.fill1,
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgFile,
                                                                                height: getSize(24),
                                                                                width: getSize(24),
                                                                                alignment: Alignment.center)
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_application".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.bodySmall)))
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    60),
                                                            width:
                                                                getHorizontalSize(
                                                                    75),
                                                            margin: getMargin(
                                                                left: 99),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: getVerticalSize(59),
                                                                          width: getHorizontalSize(75),
                                                                          padding: getPadding(left: 25, top: 16, right: 25, bottom: 16),
                                                                          decoration: AppDecoration.fill1,
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgComputer,
                                                                                height: getSize(24),
                                                                                width: getSize(24),
                                                                                alignment: Alignment.topCenter)
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  3),
                                                                          child: Text(
                                                                              "lbl_bookmarks".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.bodySmall)))
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapHome();
                                                            },
                                                            child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        60),
                                                                width:
                                                                    getHorizontalSize(
                                                                        75),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Container(
                                                                              height: getVerticalSize(59),
                                                                              width: getHorizontalSize(75),
                                                                              padding: getPadding(left: 25, top: 17, right: 25, bottom: 17),
                                                                              decoration: AppDecoration.fill1,
                                                                              child: Stack(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgClock, height: getSize(24), width: getSize(24), alignment: Alignment.topCenter)
                                                                              ]))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Text(
                                                                              "lbl_home".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.bodySmall))
                                                                    ]))))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              height: getVerticalSize(357),
                                              width: getHorizontalSize(78),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    59),
                                                            width:
                                                                getHorizontalSize(
                                                                    75),
                                                            padding: getPadding(
                                                                left: 25,
                                                                top: 17,
                                                                right: 25,
                                                                bottom: 17),
                                                            decoration:
                                                                AppDecoration
                                                                    .fill1,
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgUserOnerror,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft)
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 46),
                                                            child: Text(
                                                                "lbl_my_account"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextThemeHelper
                                                                    .labelLargeOnError)))
                                                  ])))
                                    ]))
                          ])))
                    ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapHome() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
