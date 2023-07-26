import '../controller/myaccount_controller.dart';
import '../models/myaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';

// ignore: must_be_immutable
class MyaccountItemWidget extends StatelessWidget {
  MyaccountItemWidget(
    this.myaccountItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyaccountItemModel myaccountItemModelObj;

  var controller = Get.find<MyaccountController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 16,
        top: 15,
        right: 16,
        bottom: 15,
      ),
      decoration: AppDecoration.fill1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCalendar,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            margin: getMargin(
              top: 2,
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 3,
            ),
            child: Obx(
              () => Text(
                myaccountItemModelObj.tanggallahirTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextThemeHelper.titleMedium16,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 4,
              bottom: 2,
            ),
            child: Obx(
              () => Text(
                myaccountItemModelObj.dateTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgSystemicon24pxright,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 16,
            ),
          ),
        ],
      ),
    );
  }
}
