import '../main_page/widgets/mainpage_item_widget.dart';
import 'controller/main_controller.dart';
import 'models/main_model.dart';
import 'models/mainpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/widgets/custom_floating_button.dart';
import 'package:orthosmart_30/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  MainController controller = Get.put(MainController(MainModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: SizedBox(
                    height: 745.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              decoration: AppDecoration.fillGray,
                              child: Container(
                                  decoration: AppDecoration.outlineBlack9004,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            height: 35.v,
                                            width: 359.h,
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
                                        SizedBox(height: 14.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapNine();
                                            },
                                            child: SizedBox(
                                                height: 74.v,
                                                width: 190.h,
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
                                                    ]))),
                                        SizedBox(height: 61.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 30.h),
                                                child: Text("lbl_hi_dr_name".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeBluegray800))),
                                        SizedBox(height: 61.v)
                                      ])))),
                      _buildNameHemalatha(),
                      _buildTwenty()
                    ]))),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildNameHemalatha() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 439.v, bottom: 130.v),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 198.v,
                  width: 300.h,
                  margin: EdgeInsets.only(bottom: 33.v),
                  child: Stack(alignment: Alignment.topRight, children: [
                    _buildTwentyFive(
                        userName: "msg_name_hemalatha".tr,
                        userAge: "lbl_age_56".tr,
                        userSex: "lbl_sex_female".tr,
                        userChiefComplaint: "msg_chief_complaint2".tr,
                        userCase: "msg_case_tooth_decay".tr,
                        userClickHereForTest: "msg_click_here_for_test".tr,
                        onTapClickHereForTest: () {
                          onTapTxtClickHereForTest();
                        }),
                    Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconUser)))
                  ])),
              Spacer(),
              SizedBox(height: 231.v, width: 47.h),
              SizedBox(
                  height: 231.v,
                  width: 300.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    _buildTwentyFive(
                        userName: "msg_name_hemalatha".tr,
                        userAge: "lbl_age_56".tr,
                        userSex: "lbl_sex_female".tr,
                        userChiefComplaint: "msg_chief_complaint2".tr,
                        userCase: "msg_case_tooth_decay".tr,
                        userClickHereForTest: "msg_click_here_for_test".tr),
                    Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconUser))),
                    Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            alignment: Alignment.bottomLeft,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconTableReport)))
                  ]))
            ]))));
  }

  /// Section Widget
  Widget _buildTwenty() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 217.v, right: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 8.v),
            decoration: AppDecoration.outlineBlack9004,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 6.v),
                  SizedBox(
                      height: 123.v,
                      child: Obx(() => ListView.separated(
                          padding: EdgeInsets.only(left: 4.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 9.h);
                          },
                          itemCount: controller
                              .mainModelObj.value.mainpageItemList.value.length,
                          itemBuilder: (context, index) {
                            MainpageItemModel model = controller.mainModelObj
                                .value.mainpageItemList.value[index];
                            return MainpageItemWidget(model,
                                onTapAddPatient: () {
                              onTapAddPatient();
                            });
                          }))),
                  SizedBox(height: 24.v),
                  Text("msg_recently_interacted".tr,
                      style: CustomTextStyles.bodyLargeBluegray800)
                ])));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 60,
        width: 60,
        child: CustomImageView(
            imagePath: ImageConstant.imgIconTableReport,
            height: 30.0.v,
            width: 30.0.h));
  }

  /// Common widget
  Widget _buildTwentyFive({
    required String userName,
    required String userAge,
    required String userSex,
    required String userChiefComplaint,
    required String userCase,
    required String userClickHereForTest,
    Function? onTapClickHereForTest,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack9005
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_name".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "lbl_hemalatha_p".tr,
                            style: CustomTextStyles.bodyLargeBlack900)
                      ]),
                      textAlign: TextAlign.center)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_age".tr,
                                  style: theme.textTheme.bodyLarge),
                              TextSpan(
                                  text: "lbl_56".tr,
                                  style: CustomTextStyles.bodyLargeBlack900)
                            ]),
                            textAlign: TextAlign.center)),
                    Padding(
                        padding: EdgeInsets.only(left: 35.h, bottom: 2.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_sex".tr,
                                  style: theme.textTheme.bodyLarge),
                              TextSpan(
                                  text: "lbl_female".tr,
                                  style: CustomTextStyles.bodyLargeBlack900)
                            ]),
                            textAlign: TextAlign.center))
                  ])),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_chief_complaint2".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "lbl_tooth_decay".tr,
                            style: CustomTextStyles.bodyLargeBlack900)
                      ]),
                      textAlign: TextAlign.center)),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_case".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "lbl_tooth_decay".tr,
                            style: CustomTextStyles.bodyLargeBlack900)
                      ]),
                      textAlign: TextAlign.center)),
              SizedBox(height: 7.v),
              Align(
                  alignment: Alignment.centerRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 10.v,
                        width: 5.h,
                        margin: EdgeInsets.only(top: 6.v, bottom: 5.v)),
                    GestureDetector(onTap: () {
                      onTapClickHereForTest!.call();
                    }),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(userClickHereForTest,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlueA200
                                .copyWith(color: appTheme.blueA200)))
                  ]))
            ]));
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapAddPatient() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapNine() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the patientProfileScreen when the action is triggered.
  onTapTxtClickHereForTest() {
    Get.toNamed(
      AppRoutes.patientProfileScreen,
    );
  }
}
