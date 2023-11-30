import '../controller/main_controller.dart';
import '../models/mainpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:orthosmart_30/core/app_export.dart';

// ignore: must_be_immutable
class MainpageItemWidget extends StatelessWidget {
  MainpageItemWidget(
    this.mainpageItemModelObj, {
    Key? key,
    this.onTapAddPatient,
  }) : super(
          key: key,
        );

  MainpageItemModel mainpageItemModelObj;

  var controller = Get.find<MainController>();

  VoidCallback? onTapAddPatient;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.h,
      child: GestureDetector(
        onTap: () {
          onTapAddPatient!.call();
        },
        child: Column(
          children: [
            SizedBox(
              height: 101.v,
              width: 95.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 95.adaptSize,
                      width: 95.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          47.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.blueA200,
                            appTheme.cyan600,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: mainpageItemModelObj.addPatient!.value,
                      height: 78.v,
                      width: 39.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: mainpageItemModelObj.icons!.value,
                      height: 18.v,
                      width: 14.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 19.v,
                        right: 21.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Text(
                mainpageItemModelObj.addPatient1!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
