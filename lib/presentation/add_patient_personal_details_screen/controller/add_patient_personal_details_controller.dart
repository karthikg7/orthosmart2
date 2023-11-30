import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/add_patient_personal_details_screen/models/add_patient_personal_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPatientPersonalDetailsScreen.
///
/// This class manages the state of the AddPatientPersonalDetailsScreen, including the
/// current addPatientPersonalDetailsModelObj
class AddPatientPersonalDetailsController extends GetxController {
  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController mailIdBoxEditTextController = TextEditingController();

  TextEditingController mailIdBoxEditTextController1 = TextEditingController();

  TextEditingController passwordBoxEditTextController = TextEditingController();

  TextEditingController nameEditTextController = TextEditingController();

  Rx<AddPatientPersonalDetailsModel> addPatientPersonalDetailsModelObj =
      AddPatientPersonalDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameEditTextController.dispose();
    mailIdBoxEditTextController.dispose();
    mailIdBoxEditTextController1.dispose();
    passwordBoxEditTextController.dispose();
    nameEditTextController.dispose();
  }
}
