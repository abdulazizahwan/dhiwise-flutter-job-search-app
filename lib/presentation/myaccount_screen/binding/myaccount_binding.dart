import '../controller/myaccount_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyaccountScreen.
///
/// This class ensures that the MyaccountController is created when the
/// MyaccountScreen is first loaded.
class MyaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyaccountController());
  }
}
