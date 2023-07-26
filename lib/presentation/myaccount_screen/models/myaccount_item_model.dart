import 'package:get/get.dart';

/// This class is used in the [myaccount_item_widget] screen.
class MyaccountItemModel {
  Rx<String> tanggallahirTxt = Rx("Tanggal Lahir");

  Rx<String> dateTxt = Rx("12-12-2000");

  Rx<String>? id = Rx("");
}
