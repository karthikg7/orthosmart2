import '../../../core/app_export.dart';
import 'mainpage_item_model.dart';

/// This class defines the variables used in the [main_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MainModel {
  Rx<List<MainpageItemModel>> mainpageItemList = Rx([
    MainpageItemModel(
        addPatient: ImageConstant.imgCharacter.obs,
        icons: ImageConstant.imgIcons.obs,
        addPatient1: "Add Patient".obs),
    MainpageItemModel(addPatient1: "Add Clinic".obs)
  ]);
}
