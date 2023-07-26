import 'package:job_search_app/presentation/splash_screen/splash_screen.dart';
import 'package:job_search_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:job_search_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:job_search_app/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:job_search_app/presentation/home_screen/home_screen.dart';
import 'package:job_search_app/presentation/home_screen/binding/home_binding.dart';
import 'package:job_search_app/presentation/myaccount_screen/myaccount_screen.dart';
import 'package:job_search_app/presentation/myaccount_screen/binding/myaccount_binding.dart';
import 'package:job_search_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:job_search_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String homeScreen = '/home_screen';

  static const String myaccountScreen = '/myaccount_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: myaccountScreen,
      page: () => MyaccountScreen(),
      bindings: [
        MyaccountBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
