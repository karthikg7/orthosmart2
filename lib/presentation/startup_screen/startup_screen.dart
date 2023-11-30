import 'controller/startup_controller.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';

class StartupScreen extends GetWidget<StartupController> {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1, 1),
                        colors: [
                          appTheme.cyan600,
                          appTheme.blue200,
                          appTheme.blueA200
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 38.h, vertical: 17.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Spacer(flex: 46),
                      GestureDetector(
                          onTap: () {
                            onTapTwelve();
                          },
                          child: Container(
                              height: 130.adaptSize,
                              width: 130.adaptSize,
                              padding: EdgeInsets.symmetric(horizontal: 4.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder65),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup8BlueGray900,
                                  height: 115.v,
                                  width: 107.h,
                                  alignment: Alignment.topRight))),
                      SizedBox(height: 7.v),
                      SizedBox(
                          height: 59.v,
                          width: 282.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("msg_lorem_ipsum_dolor".tr,
                                    style: CustomTextStyles.bodyMediumGray100)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    decoration: AppDecoration.outlineBlack900,
                                    child: Text("lbl_orthomate".tr,
                                        style: theme.textTheme.headlineLarge)))
                          ])),
                      Spacer(flex: 53),
                      GestureDetector(
                          onTap: () {
                            onTapTxtWeburl();
                          },
                          child: Text("msg_www_orthomate_com".tr,
                              style: CustomTextStyles.bodyMediumWhiteA700))
                    ])))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTwelve() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapTxtWeburl() {
    // TODO: implement Actions
  }
}
