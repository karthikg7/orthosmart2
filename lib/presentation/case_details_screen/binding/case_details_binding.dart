import '../controller/case_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CaseDetailsScreen.
///
/// This class ensures that the CaseDetailsController is created when the
/// CaseDetailsScreen is first loaded.
class CaseDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaseDetailsController());
  }
}
