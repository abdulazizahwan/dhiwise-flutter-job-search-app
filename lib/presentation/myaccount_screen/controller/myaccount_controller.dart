import 'package:job_search_app/core/app_export.dart';
import 'package:job_search_app/presentation/myaccount_screen/models/myaccount_model.dart';

/// A controller class for the MyaccountScreen.
///
/// This class manages the state of the MyaccountScreen, including the
/// current myaccountModelObj
class MyaccountController extends GetxController {
  Rx<MyaccountModel> myaccountModelObj = MyaccountModel().obs;
}
