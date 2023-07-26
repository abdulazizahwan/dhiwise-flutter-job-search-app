import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';
import 'package:job_search_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 48,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: getHorizontalSize(
                                279,
                              ),
                              child: Text(
                                "msg_let_s_find_your".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgNotification,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                left: 40,
                                top: 7,
                                bottom: 52,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomSearchView(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: controller.searchController,
                        hintText: "msg_search_a_job_or".tr,
                        hintStyle: theme.textTheme.bodyLarge!,
                        margin: getMargin(
                          left: 16,
                          top: 15,
                          right: 16,
                        ),
                        prefix: Container(
                          margin: getMargin(
                            left: 16,
                            top: 15,
                            right: 8,
                            bottom: 15,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            46,
                          ),
                        ),
                        suffix: Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              15,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              controller.searchController.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        contentPadding: getPadding(
                          top: 12,
                          right: 40,
                          bottom: 12,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 16,
                          top: 40,
                        ),
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 211,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_jobs_for_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextThemeHelper.titleLarge22,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 165,
                                        top: 5,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: getMargin(
                                          right: 6,
                                        ),
                                        padding: getPadding(
                                          left: 16,
                                          top: 15,
                                          right: 16,
                                          bottom: 15,
                                        ),
                                        decoration:
                                            AppDecoration.outline.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgIcgoogle,
                                                  height: getSize(
                                                    40,
                                                  ),
                                                  width: getSize(
                                                    40,
                                                  ),
                                                  margin: getMargin(
                                                    bottom: 6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 2,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "lbl_product_design".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextThemeHelper
                                                            .titleMediumWhiteA700,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 5,
                                                        ),
                                                        child: Text(
                                                          "lbl_google".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 54,
                                                top: 12,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      51,
                                                    ),
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 4,
                                                      right: 5,
                                                      bottom: 4,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFill
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5,
                                                    ),
                                                    child: Text(
                                                      "lbl_fulltime".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodySmallWhiteA700,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      43,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 4,
                                                      right: 5,
                                                      bottom: 4,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFill
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5,
                                                    ),
                                                    child: Text(
                                                      "lbl_junior".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodySmallWhiteA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 35,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "lbl_california".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextThemeHelper
                                                        .bodyMediumWhiteA700,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 81,
                                                    ),
                                                    child: Text(
                                                      "lbl_1_000_month".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodyMediumWhiteA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: getMargin(
                                          left: 6,
                                        ),
                                        padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14,
                                        ),
                                        decoration:
                                            AppDecoration.outline1.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgDribbble1,
                                                    height: getSize(
                                                      40,
                                                    ),
                                                    width: getSize(
                                                      40,
                                                    ),
                                                    margin: getMargin(
                                                      bottom: 5,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 16,
                                                      top: 2,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "lbl_ui_designer".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextThemeHelper
                                                              .titleMediumWhiteA700,
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 4,
                                                          ),
                                                          child: Text(
                                                            "lbl_dribbble".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 54,
                                                top: 13,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      57,
                                                    ),
                                                    padding: getPadding(
                                                      all: 5,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFill1
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5,
                                                    ),
                                                    child: Text(
                                                      "lbl_intership".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodySmallPink700,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      43,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      all: 5,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFill2
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5,
                                                    ),
                                                    child: Text(
                                                      "lbl_junior".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodySmallPink700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 36,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "lbl_singapore".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextThemeHelper
                                                        .bodyMediumWhiteA700,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 84,
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      "lbl_500_month".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodyMediumWhiteA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 41,
                          right: 11,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                right: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_recently_posted".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      "lbl_see_all".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Obx(
                                () => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(
                                      165,
                                    ),
                                    crossAxisCount: 2,
                                    mainAxisSpacing: getHorizontalSize(
                                      12,
                                    ),
                                    crossAxisSpacing: getHorizontalSize(
                                      12,
                                    ),
                                  ),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.homeModelObj.value
                                      .homeItemList.value.length,
                                  itemBuilder: (context, index) {
                                    HomeItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .homeItemList
                                        .value[index];
                                    return HomeItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 34,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_freelance_jobs".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(
                                top: 15,
                              ),
                              child: IntrinsicWidth(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        196,
                                      ),
                                      padding: getPadding(
                                        left: 16,
                                        top: 12,
                                        right: 16,
                                        bottom: 12,
                                      ),
                                      decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage6,
                                            height: getSize(
                                              35,
                                            ),
                                            width: getSize(
                                              35,
                                            ),
                                            margin: getMargin(
                                              top: 3,
                                              bottom: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 14,
                                              top: 3,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_glints".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .bodySmallPrimaryContainer,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 4,
                                                  ),
                                                  child: Text(
                                                    "lbl_hr_recruiter".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 8,
                                                  ),
                                                  child: Text(
                                                    "lbl_fulltime2".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextThemeHelper
                                                        .bodyMediumLightblueA700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        94,
                                      ),
                                      width: getHorizontalSize(
                                        196,
                                      ),
                                      margin: getMargin(
                                        left: 12,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                right: 45,
                                              ),
                                              child: Text(
                                                "msg_software_engineeri".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: getPadding(
                                                left: 16,
                                                top: 12,
                                                right: 16,
                                                bottom: 12,
                                              ),
                                              decoration:
                                                  AppDecoration.fill5.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 3,
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLinkedin1,
                                                          height: getSize(
                                                            30,
                                                          ),
                                                          width: getSize(
                                                            30,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 16,
                                                            bottom: 14,
                                                          ),
                                                          child: Text(
                                                            "lbl_linkedin".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextThemeHelper
                                                                .bodySmallPrimaryContainer,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 46,
                                                      top: 18,
                                                    ),
                                                    child: Text(
                                                      "lbl_fulltime2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodyMediumLightblueA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          93,
                        ),
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 40,
                        ),
                        decoration: AppDecoration.fill1,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: appTheme.blue5001,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: getVerticalSize(
                                  61,
                                ),
                                width: getHorizontalSize(
                                  75,
                                ),
                                margin: getMargin(
                                  right: 3,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: getVerticalSize(
                                          59,
                                        ),
                                        width: getHorizontalSize(
                                          75,
                                        ),
                                        padding: getPadding(
                                          left: 25,
                                          top: 17,
                                          right: 25,
                                          bottom: 17,
                                        ),
                                        decoration: AppDecoration.fill1,
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgUser,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "lbl_my_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: getVerticalSize(
                                  61,
                                ),
                                width: getHorizontalSize(
                                  75,
                                ),
                                margin: getMargin(
                                  right: 102,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: getVerticalSize(
                                          59,
                                        ),
                                        width: getHorizontalSize(
                                          75,
                                        ),
                                        padding: getPadding(
                                          left: 25,
                                          top: 17,
                                          right: 25,
                                          bottom: 17,
                                        ),
                                        decoration: AppDecoration.fill1,
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgFile,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: getPadding(
                                          right: 2,
                                        ),
                                        child: Text(
                                          "lbl_application".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: getVerticalSize(
                                  60,
                                ),
                                width: getHorizontalSize(
                                  75,
                                ),
                                margin: getMargin(
                                  left: 99,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          59,
                                        ),
                                        width: getHorizontalSize(
                                          75,
                                        ),
                                        padding: getPadding(
                                          left: 25,
                                          top: 16,
                                          right: 25,
                                          bottom: 16,
                                        ),
                                        decoration: AppDecoration.fill1,
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.topCenter,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: getPadding(
                                          right: 3,
                                        ),
                                        child: Text(
                                          "lbl_bookmarks".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                height: getVerticalSize(
                                  60,
                                ),
                                width: getHorizontalSize(
                                  75,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          59,
                                        ),
                                        width: getHorizontalSize(
                                          75,
                                        ),
                                        padding: getPadding(
                                          left: 25,
                                          top: 17,
                                          right: 25,
                                          bottom: 17,
                                        ),
                                        decoration: AppDecoration.fill1,
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgLock,
                                              height: getSize(
                                                24,
                                              ),
                                              width: getSize(
                                                24,
                                              ),
                                              alignment: Alignment.topCenter,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "lbl_home".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            TextThemeHelper.labelLargeOnError,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
