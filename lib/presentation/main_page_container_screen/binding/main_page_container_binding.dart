import '../controller/main_page_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainPageContainerScreen.
///
/// This class ensures that the MainPageContainerController is created when the
/// MainPageContainerScreen is first loaded.
class MainPageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainPageContainerController());
  }
}
