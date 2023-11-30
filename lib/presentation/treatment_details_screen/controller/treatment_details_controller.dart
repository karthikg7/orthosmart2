import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/treatment_details_screen/models/treatment_details_model.dart';

/// A controller class for the TreatmentDetailsScreen.
///
/// This class manages the state of the TreatmentDetailsScreen, including the
/// current treatmentDetailsModelObj
class TreatmentDetailsController extends GetxController {
  Rx<TreatmentDetailsModel> treatmentDetailsModelObj =
      TreatmentDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in treatmentDetailsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    treatmentDetailsModelObj.value.dropdownItemList.refresh();
  }
}
