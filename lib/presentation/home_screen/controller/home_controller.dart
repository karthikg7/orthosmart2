import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  TextEditingController mailIdBoxController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onClose() {
    super.onClose();
    mailIdBoxController.dispose();
    passwordController.dispose();
  }
}
