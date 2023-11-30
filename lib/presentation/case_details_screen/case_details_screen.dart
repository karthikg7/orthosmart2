import 'controller/case_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_drop_down.dart';
import 'package:orthosmart_30/widgets/custom_elevated_button.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

class CaseDetailsScreen extends GetWidget<CaseDetailsController> {
  const CaseDetailsScreen({Key? key}) : super(key: key);

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
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 14.h, right: 87.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIconBack,
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
                                        margin: EdgeInsets.only(left: 33.h),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      width: 181.h,
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
                                                      .imgGroup8BlueGray800,
                                                  height: 64.v,
                                                  width: 60.h,
                                                  alignment: Alignment.topLeft)
                                            ]))
                                  ]))),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 30.h),
                                  child: Text("lbl_case_details".tr,
                                      style: CustomTextStyles
                                          .titleMediumCyan600Bold))),
                          SizedBox(height: 28.v),
                          _buildMailIdBox1(),
                          SizedBox(height: 17.v),
                          _buildMailIdBox2(),
                          SizedBox(height: 23.v),
                          Container(
                              margin:
                                  EdgeInsets.only(left: 128.h, right: 132.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 1.v),
                              decoration: AppDecoration.outlineBlack9002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 14.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 49.adaptSize,
                                        width: 49.adaptSize,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 12.h)),
                                    SizedBox(height: 5.v),
                                    Opacity(
                                        opacity: 0.25,
                                        child: Text("lbl_add_image".tr,
                                            style: theme.textTheme.titleSmall))
                                  ])),
                          SizedBox(height: 11.v),
                          _buildIconvoice(),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h, right: 31.h),
                              child: CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 3.v, 2.h, 2.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgIconDownC,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize)),
                                  hintText: "lbl_case".tr,
                                  items: controller.caseDetailsModelObj.value
                                      .dropdownItemList!.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 146.v,
                                  width: 220.h,
                                  margin: EdgeInsets.only(left: 30.h),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: 146.v,
                                                width: 143.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 58.h,
                                                    vertical: 3.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup28),
                                                        fit: BoxFit.cover)),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSpeechBubble1,
                                                    height: 22.v,
                                                    width: 19.h,
                                                    alignment:
                                                        Alignment.topLeft))),
                                        _buildNext()
                                      ]))),
                          SizedBox(height: 57.v)
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildMailIdBox1() {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 31.h),
        child: CustomTextFormField(
            controller: controller.mailIdBox1Controller,
            hintText: "lbl_chief_complaint2".tr));
  }

  /// Section Widget
  Widget _buildMailIdBox2() {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 31.h),
        child: CustomTextFormField(
            controller: controller.mailIdBox2Controller,
            hintText: "lbl_findings2".tr,
            maxLines: 5,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.h, vertical: 4.v)));
  }

  /// Section Widget
  Widget _buildIconvoice() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: CustomTextFormField(
            controller: controller.iconvoiceController,
            hintText: "lbl_add_voice_note".tr,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.only(left: 30.h, right: 8.h, bottom: 8.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconVoice,
                    height: 36.v,
                    width: 20.h)),
            suffixConstraints: BoxConstraints(maxHeight: 45.v),
            contentPadding:
                EdgeInsets.only(left: 14.h, top: 7.v, bottom: 7.v)));
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        width: 140.h,
        text: "lbl_next".tr,
        margin: EdgeInsets.only(top: 42.v),
        onPressed: () {
          onTapNext();
        },
        alignment: Alignment.topRight);
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

  /// Navigates to the addPatientPersonalDetailsScreen when the action is triggered.
  onTapImgIconBack() {
    Get.toNamed(
      AppRoutes.addPatientPersonalDetailsScreen,
    );
  }

  /// Navigates to the treatmentDetailsScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.treatmentDetailsScreen,
    );
  }
}
