import 'controller/patient_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';

class PatientProfileScreen extends GetWidget<PatientProfileController> {
  const PatientProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                          _buildPatientProfileSection(),
                          SizedBox(height: 4.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text("msg_patient_details".tr,
                                      style: theme.textTheme.titleMedium))),
                          _buildPatientDetailsSection(),
                          SizedBox(height: 41.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text("lbl_case_details".tr,
                                      style: theme.textTheme.titleMedium))),
                          _buildCaseDetailsSection(),
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 164.v,
                                  width: 239.h,
                                  margin: EdgeInsets.only(left: 31.h),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomElevatedButton(
                                            width: 180.h,
                                            text: "msg_treatment_details".tr,
                                            margin: EdgeInsets.only(top: 31.v),
                                            onPressed: () {
                                              onTapTreatmentDetails();
                                            },
                                            alignment: Alignment.topRight),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCharacter2,
                                            height: 164.v,
                                            width: 61.h,
                                            alignment: Alignment.centerLeft)
                                      ]))),
                          SizedBox(height: 70.v)
                        ])))),
            bottomNavigationBar: _buildBottomBarSection()));
  }

  /// Section Widget
  Widget _buildPatientProfileSection() {
    return SizedBox(
        height: 202.v,
        width: 332.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 52.v),
                  child: Text("msg_patient_profile".tr,
                      style: CustomTextStyles.titleMediumCyan600Bold))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 202.v,
                  width: 332.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgIconBack,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              margin: EdgeInsets.only(top: 29.v, bottom: 9.v),
                              onTap: () {
                                onTapImgIconBack();
                              }),
                          Container(
                              height: 74.v,
                              width: 190.h,
                              margin: EdgeInsets.only(left: 33.h),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            width: 181.h, child: Divider())),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text("lbl_orthomate".tr,
                                            style:
                                                theme.textTheme.headlineSmall)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGroup8BlueGray800,
                                        height: 64.v,
                                        width: 60.h,
                                        alignment: Alignment.topLeft)
                                  ]))
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgOralCareAmicoBlack900,
                        height: 147.v,
                        width: 131.h,
                        alignment: Alignment.bottomRight,
                        onTap: () {
                          onTapImgOralCareAmico();
                        })
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPatientDetailsSection() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack9001,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_name".tr,
                          style: theme.textTheme.bodyLarge),
                      TextSpan(
                          text: "lbl_hemalatha_p".tr,
                          style: CustomTextStyles.bodyLargeBlack900)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 5.v),
                SizedBox(
                    width: 177.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_sex".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_female".tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900)
                                  ]),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_age".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_56".tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900)
                                  ]),
                                  textAlign: TextAlign.left))
                        ]))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgIconMoreTwo,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(left: 37.h, top: 31.v))
        ]));
  }

  /// Section Widget
  Widget _buildCaseDetailsSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 5.v),
        decoration: AppDecoration.outlineBlack9001,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Container(
                  width: 292.h,
                  margin: EdgeInsets.only(right: 8.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_chief_complaint".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "msg_lorem_ipsum_dolor2".tr,
                            style: CustomTextStyles.bodyLargeBlack900)
                      ]),
                      textAlign: TextAlign.center)),
              SizedBox(height: 20.v),
              SizedBox(
                  height: 52.v,
                  width: 300.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                            width: 300.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_findings".tr,
                                      style: theme.textTheme.bodyLarge),
                                  TextSpan(
                                      text: "msg_lorem_ipsum_dolor2".tr,
                                      style: CustomTextStyles.bodyLargeBlack900)
                                ]),
                                textAlign: TextAlign.center))),
                    CustomImageView(
                        imagePath: ImageConstant.imgIconMoreTwo,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 2.h))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
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

  /// Navigates to the addPatientPersonalDetailsScreen when the action is triggered.
  onTapImgIconBack() {
    Get.toNamed(
      AppRoutes.addPatientPersonalDetailsScreen,
    );
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapImgOralCareAmico() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }

  /// Navigates to the treatmentDetailsScreen when the action is triggered.
  onTapTreatmentDetails() {
    Get.toNamed(
      AppRoutes.treatmentDetailsScreen,
    );
  }
}
