import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/startup_screen/models/startup_model.dart';

/// A controller class for the StartupScreen.
///
/// This class manages the state of the StartupScreen, including the
/// current startupModelObj
class StartupController extends GetxController {
  Rx<StartupModel> startupModelObj = StartupModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homeScreen,
      );
    });
  }
}
