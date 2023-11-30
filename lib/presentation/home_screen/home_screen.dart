import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/core/utils/validation_functions.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';
import 'package:orthosmart_30/widgets/custom_outlined_button.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

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
                            margin: EdgeInsets.only(left: 1.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 35.v),
                            decoration: AppDecoration.fillGray,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 73.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTopLogoAndBack();
                                          },
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 74.h),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconBack,
                                                    height: 35.adaptSize,
                                                    width: 35.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 29.v,
                                                        bottom: 9.v)),
                                                Container(
                                                    height: 74.v,
                                                    width: 190.h,
                                                    margin: EdgeInsets.only(
                                                        left: 33.h),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                                                  Alignment
                                                                      .topLeft)
                                                        ]))
                                              ])))),
                                  SizedBox(height: 14.v),
                                  Text("msg_lorem_ipsum_dolor".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray800),
                                  SizedBox(height: 38.v),
                                  _buildMailIdBox(),
                                  SizedBox(height: 34.v),
                                  _buildPassword(),
                                  SizedBox(height: 19.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 17.h),
                                          child: Text("lbl_forgot_password".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray800))),
                                  SizedBox(height: 16.v),
                                  _buildLogIn(),
                                  SizedBox(height: 14.v),
                                  Text("msg_don_t_have_an_account".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray800),
                                  SizedBox(height: 13.v),
                                  _buildSignUpHere(),
                                  SizedBox(height: 17.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgDoctorsCuate,
                                      height: 201.v,
                                      width: 199.h)
                                ])))))));
  }

  /// Section Widget
  Widget _buildMailIdBox() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 17.h),
        child: CustomTextFormField(
            controller: controller.mailIdBoxController,
            hintText: "lbl_mail_id".tr,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(7.h, 8.v, 7.h, 7.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconAtSign,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 35.v),
            contentPadding: EdgeInsets.only(top: 7.v, right: 30.h, bottom: 7.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 17.h),
        child: CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(8.h, 7.v, 5.h, 8.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 35.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.only(top: 7.v, right: 30.h, bottom: 7.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack));
  }

  /// Section Widget
  Widget _buildLogIn() {
    return CustomElevatedButton(
        width: 140.h,
        text: "lbl_log_in".tr,
        buttonStyle: CustomButtonStyles.outlineBlack,
        onPressed: () {
          onTapLogIn();
        });
  }

  /// Section Widget
  Widget _buildSignUpHere() {
    return CustomOutlinedButton(
        width: 120.h,
        text: "lbl_sign_up_here".tr,
        onPressed: () {
          onTapSignUpHere();
        });
  }

  /// Navigates to the startupScreen when the action is triggered.
  onTapTopLogoAndBack() {
    Get.toNamed(
      AppRoutes.startupScreen,
    );
  }

  /// Navigates to the mainPageContainerScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.mainPageContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUpHere() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
