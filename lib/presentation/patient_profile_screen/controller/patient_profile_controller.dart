import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/patient_profile_screen/models/patient_profile_model.dart';

/// A controller class for the PatientProfileScreen.
///
/// This class manages the state of the PatientProfileScreen, including the
/// current patientProfileModelObj
class PatientProfileController extends GetxController {
  Rx<PatientProfileModel> patientProfileModelObj = PatientProfileModel().obs;
}
