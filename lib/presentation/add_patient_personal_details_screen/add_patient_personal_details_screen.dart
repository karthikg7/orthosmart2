import 'controller/add_patient_personal_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/core/utils/validation_functions.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddPatientPersonalDetailsScreen
    extends GetWidget<AddPatientPersonalDetailsController> {
  AddPatientPersonalDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: AppDecoration.fillGray,
                        child: Column(children: [
                          Container(
                              height: 35.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            appTheme.black900.withOpacity(0.25),
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(0, 0))
                                  ])),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTopLogoAndBack();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 14.h, right: 87.h),
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
                                            margin: EdgeInsets.only(left: 33.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: SizedBox(
                                                          width: 182.h,
                                                          child: Divider())),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Text(
                                                          "lbl_orthomate".tr,
                                                          style: theme.textTheme
                                                              .headlineSmall)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup8,
                                                      height: 64.v,
                                                      width: 60.h,
                                                      alignment:
                                                          Alignment.topLeft)
                                                ]))
                                      ])))),
                          SizedBox(height: 19.v),
                          _buildPatientDetailsRow(),
                          SizedBox(height: 21.v),
                          _buildFullNameEditText(),
                          SizedBox(height: 30.v),
                          _buildSeventyTwo(),
                          SizedBox(height: 30.v),
                          _buildPasswordBoxEditText(),
                          SizedBox(height: 30.v),
                          _buildNameEditText(),
                          SizedBox(height: 104.v),
                          _buildNextButton(),
                          SizedBox(height: 104.v)
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildPatientDetailsRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 63.v, bottom: 49.v),
              child: Text("lbl_patient_details".tr,
                  style: CustomTextStyles.titleMediumCyan600Bold)),
          CustomImageView(
              imagePath: ImageConstant.imgOphthalmologistAmico,
              height: 139.v,
              width: 150.h,
              margin: EdgeInsets.only(left: 15.h))
        ]));
  }

  /// Section Widget
  Widget _buildFullNameEditText() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomTextFormField(
            controller: controller.fullNameEditTextController,
            hintText: "lbl_full_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildMailIdBoxEditText() {
    return CustomTextFormField(
        width: 150.h,
        controller: controller.mailIdBoxEditTextController,
        hintText: "lbl_age".tr);
  }

  /// Section Widget
  Widget _buildMailIdBoxEditText1() {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: CustomTextFormField(
            width: 141.h,
            controller: controller.mailIdBoxEditTextController1,
            hintText: "lbl_sex".tr));
  }

  /// Section Widget
  Widget _buildSeventyTwo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildMailIdBoxEditText(), _buildMailIdBoxEditText1()]));
  }

  /// Section Widget
  Widget _buildPasswordBoxEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 30.h),
        child: CustomTextFormField(
            controller: controller.passwordBoxEditTextController,
            hintText: "lbl_contact".tr));
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 30.h),
        child: CustomTextFormField(
            controller: controller.nameEditTextController,
            hintText: "lbl_clinic_name".tr,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 2.v, 8.h, 3.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconDownC,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 35.v),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 7.v)));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        width: 140.h,
        text: "lbl_next".tr,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.mainPage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Addpatient:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the mainPageContainerScreen when the action is triggered.
  onTapTopLogoAndBack() {
    Get.toNamed(
      AppRoutes.mainPageContainerScreen,
    );
  }

  /// Navigates to the caseDetailsScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.caseDetailsScreen,
    );
  }
}
