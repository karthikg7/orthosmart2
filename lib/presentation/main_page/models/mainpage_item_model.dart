import '../../../core/app_export.dart';

/// This class is used in the [mainpage_item_widget] screen.
class MainpageItemModel {
  MainpageItemModel({
    this.addPatient,
    this.icons,
    this.addPatient1,
    this.id,
  }) {
    addPatient = addPatient ?? Rx(ImageConstant.imgCharacter);
    icons = icons ?? Rx(ImageConstant.imgIcons);
    addPatient1 = addPatient1 ?? Rx("Add Patient");
    id = id ?? Rx("");
  }

  Rx<String>? addPatient;

  Rx<String>? icons;

  Rx<String>? addPatient1;

  Rx<String>? id;
}
