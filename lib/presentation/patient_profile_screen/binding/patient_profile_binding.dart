import '../controller/patient_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PatientProfileScreen.
///
/// This class ensures that the PatientProfileController is created when the
/// PatientProfileScreen is first loaded.
class PatientProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientProfileController());
  }
}
