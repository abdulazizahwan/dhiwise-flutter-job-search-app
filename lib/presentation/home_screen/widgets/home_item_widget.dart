import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Obx(
              () => Text(
                homeItemModelObj.typeTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Obx(
              () => Text(
                homeItemModelObj.durationTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextThemeHelper.bodyMediumPrimaryContainer,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 4,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_fulltime2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                  ),
                  child: Obx(
                    () => Text(
                      homeItemModelObj.positionTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
