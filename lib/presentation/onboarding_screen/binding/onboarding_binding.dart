import '../controller/onboarding_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen.
///
/// This class ensures that the OnboardingController is created when the
/// OnboardingScreen is first loaded.
class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
