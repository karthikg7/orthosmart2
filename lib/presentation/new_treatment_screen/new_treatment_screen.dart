import 'controller/new_treatment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_checkbox_button.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';
import 'package:orthosmart_30/widgets/custom_outlined_button.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

class NewTreatmentScreen extends GetWidget<NewTreatmentController> {
  const NewTreatmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
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
                          SizedBox(
                              height: 688.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 157.v,
                                            width: double.maxFinite,
                                            margin: EdgeInsets.only(top: 149.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueA200,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(50.h),
                                                    bottomRight:
                                                        Radius.circular(50.h)),
                                                border: Border.all(
                                                    color: appTheme.black900
                                                        .withOpacity(0.1),
                                                    width: 1.h)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 61.h,
                                                vertical: 31.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup19),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  SizedBox(height: 126.v),
                                                  Text("lbl_wire_sequence".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumGray100_1),
                                                  SizedBox(height: 5.v),
                                                  SizedBox(
                                                      height: 26.v,
                                                      width: 177.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            _buildWireSequence(),
                                                            _buildCheckBox(),
                                                            _buildLowerCheckBox()
                                                          ])),
                                                  SizedBox(height: 334.v),
                                                  _buildSaveButton()
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.h, top: 107.v),
                                            child: Text("lbl_new_treatment".tr,
                                                style: CustomTextStyles
                                                    .titleMediumCyan600Bold))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgIconBack,
                                                  height: 35.adaptSize,
                                                  width: 35.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 29.v, bottom: 9.v),
                                                  onTap: () {
                                                    onTapImgIconBack();
                                                  }),
                                              Container(
                                                  height: 74.v,
                                                  width: 190.h,
                                                  margin: EdgeInsets.only(
                                                      left: 33.h),
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
                                                            alignment: Alignment
                                                                .topLeft)
                                                      ]))
                                            ]))),
                                    _buildNinetyFourColumn(),
                                    _buildMailIdBox()
                                  ])),
                          SizedBox(height: 61.v)
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildWireSequence() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.bottomCenter,
            text: "lbl_upper".tr,
            value: controller.wireSequence.value,
            onChange: (value) {
              controller.wireSequence.value = value;
            })));
  }

  /// Section Widget
  Widget _buildCheckBox() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.bottomLeft,
            value: controller.checkBox.value,
            onChange: (value) {
              controller.checkBox.value = value;
            })));
  }

  /// Section Widget
  Widget _buildLowerCheckBox() {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Obx(() => CustomCheckboxButton(
                alignment: Alignment.topRight,
                width: 89.h,
                text: "lbl_lower".tr,
                value: controller.lowerCheckBox.value,
                isRightCheck: true,
                onChange: (value) {
                  controller.lowerCheckBox.value = value;
                }))));
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 18.h, right: 19.h),
        onPressed: () {
          onTapSaveButton();
        });
  }

  /// Section Widget
  Widget _buildMailIdBox2() {
    return CustomTextFormField(
        width: 140.h,
        controller: controller.mailIdBox2Controller,
        hintText: "lbl_class".tr);
  }

  /// Section Widget
  Widget _buildColorButton() {
    return CustomOutlinedButton(
        height: 35.v,
        width: 141.h,
        text: "lbl_color".tr,
        buttonStyle: CustomButtonStyles.outlineBlackTL10,
        buttonTextStyle: theme.textTheme.titleSmall!);
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
        controller: controller.editText1Controller,
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL101,
        fillColor: appTheme.gray100.withOpacity(0.44));
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
        controller: controller.editText2Controller,
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL101,
        fillColor: appTheme.gray100.withOpacity(0.44));
  }

  /// Section Widget
  Widget _buildNinetyFourColumn() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h, right: 29.h, bottom: 87.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_elastics".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 6.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_buildMailIdBox2(), _buildColorButton()]),
              SizedBox(height: 31.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_appliances".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 4.v),
              _buildEditText1(),
              SizedBox(height: 31.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_anticipation".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 4.v),
              _buildEditText2(),
              SizedBox(height: 11.v),
              Obx(() => CustomCheckboxButton(
                  width: 103.h,
                  text: "lbl_breakage".tr,
                  value: controller.breakage.value,
                  textStyle: theme.textTheme.titleMedium,
                  isRightCheck: true,
                  onChange: (value) {
                    controller.breakage.value = value;
                  }))
            ])));
  }

  /// Section Widget
  Widget _buildMailIdBox() {
    return Padding(
        padding: EdgeInsets.only(top: 164.v),
        child: CustomTextFormField(
            width: 301.h,
            controller: controller.mailIdBoxController,
            hintText: "lbl_add_voice_note".tr,
            textInputAction: TextInputAction.done,
            alignment: Alignment.topCenter,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 8.v, 13.h, 7.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconVoice,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 35.v),
            contentPadding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 7.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL102));
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

  /// Navigates to the treatmentDetailsScreen when the action is triggered.
  onTapSaveButton() {
    Get.toNamed(
      AppRoutes.treatmentDetailsScreen,
    );
  }

  /// Navigates to the treatmentDetailsScreen when the action is triggered.
  onTapImgIconBack() {
    Get.toNamed(
      AppRoutes.treatmentDetailsScreen,
    );
  }
}
