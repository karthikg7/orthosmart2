import 'controller/treatment_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_drop_down.dart';

class TreatmentDetailsScreen extends GetWidget<TreatmentDetailsController> {
  const TreatmentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildFour(),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 153.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(top: 244.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray100,
                                      border: Border.all(
                                          color: appTheme.black900
                                              .withOpacity(0.1),
                                          width: 1.h),
                                      boxShadow: [
                                        BoxShadow(
                                            color: appTheme.black900
                                                .withOpacity(0.15),
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: AppDecoration.fillGray,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            height: 35.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray100,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: appTheme.black900
                                                          .withOpacity(0.25),
                                                      spreadRadius: 2.h,
                                                      blurRadius: 2.h,
                                                      offset: Offset(0, 0))
                                                ])),
                                        SizedBox(height: 15.v),
                                        _buildFiftySix(),
                                        SizedBox(height: 9.v),
                                        _buildTwo(),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 56.h, right: 34.h),
                                            child: _buildFortySix(
                                                date: "lbl_date".tr,
                                                awu: "lbl_aw_u".tr,
                                                awl: "lbl_aw_l".tr,
                                                elastic: "lbl_elastic".tr)),
                                        SizedBox(height: 5.v),
                                        _buildFortyThree(),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 58.h, right: 34.h),
                                            child: _buildFortySix(
                                                date: "lbl_date".tr,
                                                awu: "lbl_aw_u".tr,
                                                awl: "lbl_aw_l".tr,
                                                elastic: "lbl_elastic".tr)),
                                        SizedBox(height: 5.v),
                                        _buildFortyFive(),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 58.h, right: 34.h),
                                            child: _buildFortySix(
                                                date: "lbl_date".tr,
                                                awu: "lbl_aw_u".tr,
                                                awl: "lbl_aw_l".tr,
                                                elastic: "lbl_elastic".tr)),
                                        SizedBox(height: 5.v),
                                        _buildFortySeven(),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 58.h, right: 34.h),
                                            child: _buildFortySix(
                                                date: "lbl_date".tr,
                                                awu: "lbl_aw_u".tr,
                                                awl: "lbl_aw_l".tr,
                                                elastic: "lbl_elastic".tr)),
                                        SizedBox(height: 5.v),
                                        _buildFortyNine(),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 58.h, right: 34.h),
                                            child: _buildFortySix(
                                                date: "lbl_date".tr,
                                                awu: "lbl_aw_u".tr,
                                                awl: "lbl_aw_l".tr,
                                                elastic: "lbl_elastic".tr)),
                                        SizedBox(height: 5.v),
                                        _buildFiftyOne(),
                                        SizedBox(height: 84.v)
                                      ])))
                        ])))),
            bottomNavigationBar: _buildFiftyNine()));
  }

  /// Section Widget
  Widget _buildFour() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 105.v),
            decoration: AppDecoration.outlineBlack9004,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h, right: 14.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_date".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleMedium),
                                Text("lbl_aw_u".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleMedium),
                                Text("lbl_aw_l".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleMedium),
                                Text("lbl_elastic".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleMedium)
                              ]))),
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(right: 11.h),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.v),
                            child: Text("lbl_1".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleMediumBlack900)),
                        Opacity(
                            opacity: 0.25,
                            child: Container(
                                height: 32.v,
                                width: 60.h,
                                margin: EdgeInsets.only(left: 2.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray100.withOpacity(0.26),
                                    border: Border.all(
                                        color:
                                            appTheme.black900.withOpacity(0.44),
                                        width: 1.h)))),
                        Opacity(
                            opacity: 0.25,
                            child: Container(
                                height: 32.v,
                                width: 60.h,
                                margin: EdgeInsets.only(left: 20.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray100.withOpacity(0.26),
                                    border: Border.all(
                                        color:
                                            appTheme.black900.withOpacity(0.44),
                                        width: 1.h)))),
                        Opacity(
                            opacity: 0.25,
                            child: Container(
                                height: 32.v,
                                width: 60.h,
                                margin: EdgeInsets.only(left: 21.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray100.withOpacity(0.26),
                                    border: Border.all(
                                        color:
                                            appTheme.black900.withOpacity(0.44),
                                        width: 1.h)))),
                        Opacity(
                            opacity: 0.25,
                            child: Container(
                                height: 32.v,
                                width: 61.h,
                                margin: EdgeInsets.only(left: 19.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray100.withOpacity(0.26),
                                    border: Border.all(
                                        color:
                                            appTheme.black900.withOpacity(0.44),
                                        width: 1.h))))
                      ])),
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 14.h),
                          child: Text("lbl_more".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumCyan600))),
                  SizedBox(height: 49.v)
                ])));
  }

  /// Section Widget
  Widget _buildFiftySix() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 30.h),
            child: Row(children: [
              Expanded(
                  child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(width: 182.h, child: Divider())),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text("lbl_orthomate".tr,
                                style: theme.textTheme.headlineSmall)),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup8,
                            height: 64.v,
                            width: 60.h,
                            alignment: Alignment.topLeft)
                      ]))
                ]),
                SizedBox(height: 65.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 7.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgPlant,
                                  height: 44.v,
                                  width: 29.h,
                                  margin: EdgeInsets.only(bottom: 6.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, top: 23.v),
                                  child: Text("msg_treatment_details2".tr,
                                      style: CustomTextStyles
                                          .titleMediumCyan600Bold))
                            ])))
              ])),
              CustomImageView(
                  imagePath: ImageConstant.imgCharacter3,
                  height: 117.v,
                  width: 51.h,
                  margin: EdgeInsets.only(left: 5.h, top: 67.v, bottom: 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildTwo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 27.v),
        decoration: AppDecoration.outlineBlack9006
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDropDown(
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 3.v, 2.h, 2.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconDownCCyan600,
                          height: 30.adaptSize,
                          width: 30.adaptSize)),
                  hintText: "lbl_bracket_type".tr,
                  items: controller
                      .treatmentDetailsModelObj.value.dropdownItemList!.value,
                  onChanged: (value) {
                    controller.onSelected(value);
                  }),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, right: 45.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 24.v, bottom: 19.v),
                        child: Text("lbl_treatment_done".tr,
                            style: CustomTextStyles.titleMediumGray100_1)),
                    Container(
                        margin: EdgeInsets.only(left: 22.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 5.v),
                        decoration: AppDecoration.outlineBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 6.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 32.v,
                                  width: 30.h,
                                  margin: EdgeInsets.only(left: 15.h),
                                  onTap: () {
                                    onTapImgIconPlusCross();
                                  }),
                              Opacity(
                                  opacity: 0.25,
                                  child: Text("lbl_add_new".tr,
                                      style: theme.textTheme.titleSmall))
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFortyThree() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                  child: Text("lbl_1".tr,
                      style: CustomTextStyles.titleSmallBlack900)),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 3.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h))))
            ]));
  }

  /// Section Widget
  Widget _buildFortyFive() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 29.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                  child: Text("lbl_2".tr,
                      style: CustomTextStyles.titleSmallBlack900)),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 2.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h))))
            ]));
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 29.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                  child: Text("lbl_3".tr,
                      style: CustomTextStyles.titleSmallBlack900)),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 2.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h))))
            ]));
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 29.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child:
                  Text("lbl_4".tr, style: CustomTextStyles.titleSmallBlack900)),
          Opacity(
              opacity: 0.25,
              child: Container(
                  height: 32.v,
                  width: 57.h,
                  margin: EdgeInsets.only(left: 1.h, bottom: 1.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray100.withOpacity(0.26),
                      border: Border.all(
                          color: appTheme.black900.withOpacity(0.44),
                          width: 1.h)))),
          Opacity(
              opacity: 0.25,
              child: Container(
                  height: 32.v,
                  width: 57.h,
                  margin: EdgeInsets.only(left: 19.h, bottom: 1.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray100.withOpacity(0.26),
                      border: Border.all(
                          color: appTheme.black900.withOpacity(0.44),
                          width: 1.h)))),
          Opacity(
              opacity: 0.25,
              child: Container(
                  height: 32.v,
                  width: 57.h,
                  margin: EdgeInsets.only(left: 19.h),
                  decoration: BoxDecoration(
                      color: appTheme.gray100.withOpacity(0.26),
                      border: Border.all(
                          color: appTheme.black900.withOpacity(0.44),
                          width: 1.h)))),
          Opacity(
              opacity: 0.25,
              child: Container(
                  height: 32.v,
                  width: 57.h,
                  margin: EdgeInsets.only(left: 19.h),
                  decoration: BoxDecoration(
                      color: appTheme.gray100.withOpacity(0.26),
                      border: Border.all(
                          color: appTheme.black900.withOpacity(0.44),
                          width: 1.h))))
        ]));
  }

  /// Section Widget
  Widget _buildFiftyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 29.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                  child: Text("lbl_5".tr,
                      style: CustomTextStyles.titleSmallBlack900)),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 1.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h, bottom: 1.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h)))),
              Opacity(
                  opacity: 0.25,
                  child: Container(
                      height: 32.v,
                      width: 57.h,
                      margin: EdgeInsets.only(left: 19.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray100.withOpacity(0.26),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.44),
                              width: 1.h))))
            ]));
  }

  /// Section Widget
  Widget _buildFiftyNine() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildFortySix({
    required String date,
    required String awu,
    required String awl,
    required String elastic,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(date,
          style: CustomTextStyles.titleSmallBluegray900
              .copyWith(color: appTheme.blueGray900)),
      Spacer(flex: 35),
      Text(awu,
          style: CustomTextStyles.titleSmallBluegray900
              .copyWith(color: appTheme.blueGray900)),
      Spacer(flex: 32),
      Text(awl,
          style: CustomTextStyles.titleSmallBluegray900
              .copyWith(color: appTheme.blueGray900)),
      Spacer(flex: 31),
      Text(elastic,
          style: CustomTextStyles.titleSmallBluegray900
              .copyWith(color: appTheme.blueGray900))
    ]);
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

  /// Navigates to the newTreatmentScreen when the action is triggered.
  onTapImgIconPlusCross() {
    Get.toNamed(
      AppRoutes.newTreatmentScreen,
    );
  }
}
