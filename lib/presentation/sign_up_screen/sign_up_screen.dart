import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/core/utils/validation_functions.dart';
import 'package:orthosmart_30/widgets/custom_checkbox_button.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';
import 'package:orthosmart_30/widgets/custom_icon_button.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 47.v),
                            decoration: AppDecoration.fillGray,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 61.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 73.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIconBack,
                                                height: 35.adaptSize,
                                                width: 35.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 29.v, bottom: 9.v)),
                                            Container(
                                                height: 74.v,
                                                width: 190.h,
                                                margin:
                                                    EdgeInsets.only(left: 33.h),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                              width: 182.h,
                                                              child:
                                                                  Divider())),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Text(
                                                              "lbl_orthomate"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup8,
                                                          height: 64.v,
                                                          width: 60.h,
                                                          alignment:
                                                              Alignment.topLeft)
                                                    ]))
                                          ]))),
                                  SizedBox(height: 14.v),
                                  Text("lbl_sign_up_now".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlueA200),
                                  SizedBox(height: 9.v),
                                  Text("msg_please_fill_the".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 25.v),
                                  _buildEightyFour(),
                                  SizedBox(height: 41.v),
                                  _buildIagreethetermsandconditions(),
                                  SizedBox(height: 9.v),
                                  _buildSignUp(),
                                  SizedBox(height: 13.v),
                                  Text("msg_already_have_an".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray800),
                                  SizedBox(height: 8.v),
                                  SizedBox(
                                      height: 39.v,
                                      width: 120.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapTxtLogInHere();
                                                    },
                                                    child: Text(
                                                        "lbl_log_in_here".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallCyan600))),
                                            CustomIconButton(
                                                height: 39.v,
                                                width: 120.h,
                                                alignment: Alignment.center,
                                                child: CustomImageView())
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        borderDecoration: TextFormFieldStyleHelper.outlineBlack);
  }

  /// Section Widget
  Widget _buildMailIdBox() {
    return CustomTextFormField(
        controller: controller.mailIdBoxController,
        hintText: "lbl_mail_id".tr,
        borderDecoration: TextFormFieldStyleHelper.outlineBlack);
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.outlineBlack);
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return CustomTextFormField(
        controller: controller.confirmpasswordController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.outlineBlack);
  }

  /// Section Widget
  Widget _buildEightyFour() {
    return SizedBox(
        height: 276.v,
        width: 301.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFullName(),
                    SizedBox(height: 45.v),
                    _buildMailIdBox(),
                    SizedBox(height: 16.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgInvisible,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 8.h)),
                    SizedBox(height: 9.v),
                    _buildPassword(),
                    SizedBox(height: 15.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgInvisible,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 8.h)),
                    SizedBox(height: 11.v),
                    _buildConfirmpassword()
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 46.v),
                      child: Text("msg_minimum_6_characters".tr,
                          style:
                              CustomTextStyles.bodySmallPoppinsBluegray800))))
        ]));
  }

  /// Section Widget
  Widget _buildIagreethetermsandconditions() {
    return Obx(() => CustomCheckboxButton(
        text: "msg_i_agree_the_terms".tr,
        value: controller.iagreethetermsandconditions.value,
        textStyle: CustomTextStyles.bodySmallPoppins,
        onChange: (value) {
          controller.iagreethetermsandconditions.value = value;
        }));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        width: 140.h,
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUp();
        });
  }

  /// Navigates to the mainPageContainerScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.mainPageContainerScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtLogInHere() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
