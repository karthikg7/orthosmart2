import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/new_treatment_screen/models/new_treatment_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewTreatmentScreen.
///
/// This class manages the state of the NewTreatmentScreen, including the
/// current newTreatmentModelObj
class NewTreatmentController extends GetxController {
  TextEditingController mailIdBox2Controller = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController mailIdBoxController = TextEditingController();

  Rx<NewTreatmentModel> newTreatmentModelObj = NewTreatmentModel().obs;

  Rx<bool> wireSequence = false.obs;

  Rx<bool> checkBox = false.obs;

  Rx<bool> lowerCheckBox = false.obs;

  Rx<bool> breakage = false.obs;

  @override
  void onClose() {
    super.onClose();
    mailIdBox2Controller.dispose();
    editText1Controller.dispose();
    editText2Controller.dispose();
    mailIdBoxController.dispose();
  }
}
