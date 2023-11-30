import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/case_details_screen/models/case_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CaseDetailsScreen.
///
/// This class manages the state of the CaseDetailsScreen, including the
/// current caseDetailsModelObj
class CaseDetailsController extends GetxController {
  TextEditingController mailIdBox1Controller = TextEditingController();

  TextEditingController mailIdBox2Controller = TextEditingController();

  TextEditingController iconvoiceController = TextEditingController();

  Rx<CaseDetailsModel> caseDetailsModelObj = CaseDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    mailIdBox1Controller.dispose();
    mailIdBox2Controller.dispose();
    iconvoiceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in caseDetailsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    caseDetailsModelObj.value.dropdownItemList.refresh();
  }
}
