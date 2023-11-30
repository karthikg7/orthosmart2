import '../controller/new_treatment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewTreatmentScreen.
///
/// This class ensures that the NewTreatmentController is created when the
/// NewTreatmentScreen is first loaded.
class NewTreatmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewTreatmentController());
  }
}
