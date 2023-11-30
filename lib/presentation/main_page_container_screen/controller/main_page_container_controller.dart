import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page_container_screen/models/main_page_container_model.dart';

/// A controller class for the MainPageContainerScreen.
///
/// This class manages the state of the MainPageContainerScreen, including the
/// current mainPageContainerModelObj
class MainPageContainerController extends GetxController {
  Rx<MainPageContainerModel> mainPageContainerModelObj =
      MainPageContainerModel().obs;
}
