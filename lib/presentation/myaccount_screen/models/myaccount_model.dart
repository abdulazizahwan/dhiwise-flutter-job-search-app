import 'package:get/get.dart';
import 'myaccount_item_model.dart';

/// This class defines the variables used in the [myaccount_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyaccountModel {
  Rx<List<MyaccountItemModel>> myaccountItemList =
      Rx(List.generate(3, (index) => MyaccountItemModel()));
}
