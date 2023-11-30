import '../controller/treatment_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TreatmentDetailsScreen.
///
/// This class ensures that the TreatmentDetailsController is created when the
/// TreatmentDetailsScreen is first loaded.
class TreatmentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TreatmentDetailsController());
  }
}
