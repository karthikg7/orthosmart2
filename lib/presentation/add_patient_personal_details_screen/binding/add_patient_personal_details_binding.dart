import '../controller/add_patient_personal_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPatientPersonalDetailsScreen.
///
/// This class ensures that the AddPatientPersonalDetailsController is created when the
/// AddPatientPersonalDetailsScreen is first loaded.
class AddPatientPersonalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPatientPersonalDetailsController());
  }
}
