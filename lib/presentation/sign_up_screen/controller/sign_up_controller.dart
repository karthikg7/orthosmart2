import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController mailIdBoxController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> iagreethetermsandconditions = false.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    mailIdBoxController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
