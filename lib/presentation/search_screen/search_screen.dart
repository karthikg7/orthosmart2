import 'controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:orthosmart_30/core/app_export.dart';
import 'package:orthosmart_30/presentation/main_page/main_page.dart';
import 'package:orthosmart_30/widgets/custom_bottom_bar.dart';
import 'package:orthosmart_30/widgets/custom_text_form_field.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14.h, vertical: 50.v),
                                  decoration: AppDecoration.fillGray,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 73.h),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconBack,
                                                      height: 35.adaptSize,
                                                      width: 35.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 29.v,
                                                          bottom: 9.v),
                                                      onTap: () {
                                                        onTapImgIconBack();
                                                      }),
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
                                                                    width:
                                                                        182.h,
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
                                                ]))),
                                        SizedBox(height: 31.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgPeopleSearchAmico,
                                            height: 93.v,
                                            width: 82.h),
                                        SizedBox(height: 30.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 43.h, right: 46.h),
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .iconsearchController,
                                                hintText: "lbl_hema".tr,
                                                textInputAction:
                                                    TextInputAction.done,
                                                suffix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 9.v, 29.h, 6.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconSearch,
                                                        height: 20.v,
                                                        width: 19.h)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 35.v),
                                                contentPadding: EdgeInsets.only(
                                                    left: 17.h,
                                                    top: 7.v,
                                                    bottom: 7.v))),
                                        SizedBox(height: 30.v)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle19,
                              height: 35.v,
                              width: 359.h,
                              alignment: Alignment.topCenter)
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
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
  onTapImgIconBack() {
    Get.toNamed(
      AppRoutes.mainPageContainerScreen,
    );
  }
}
