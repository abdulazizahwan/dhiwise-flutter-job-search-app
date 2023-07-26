import 'package:job_search_app/core/app_export.dart';
import 'package:job_search_app/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
