import 'package:orthosmart_30/presentation/startup_screen/startup_screen.dart';
import 'package:orthosmart_30/presentation/startup_screen/binding/startup_binding.dart';
import 'package:orthosmart_30/presentation/home_screen/home_screen.dart';
import 'package:orthosmart_30/presentation/home_screen/binding/home_binding.dart';
import 'package:orthosmart_30/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:orthosmart_30/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:orthosmart_30/presentation/patient_profile_screen/patient_profile_screen.dart';
import 'package:orthosmart_30/presentation/patient_profile_screen/binding/patient_profile_binding.dart';
import 'package:orthosmart_30/presentation/case_details_screen/case_details_screen.dart';
import 'package:orthosmart_30/presentation/case_details_screen/binding/case_details_binding.dart';
import 'package:orthosmart_30/presentation/main_page_container_screen/main_page_container_screen.dart';
import 'package:orthosmart_30/presentation/main_page_container_screen/binding/main_page_container_binding.dart';
import 'package:orthosmart_30/presentation/add_patient_personal_details_screen/add_patient_personal_details_screen.dart';
import 'package:orthosmart_30/presentation/add_patient_personal_details_screen/binding/add_patient_personal_details_binding.dart';
import 'package:orthosmart_30/presentation/search_screen/search_screen.dart';
import 'package:orthosmart_30/presentation/search_screen/binding/search_binding.dart';
import 'package:orthosmart_30/presentation/treatment_details_screen/treatment_details_screen.dart';
import 'package:orthosmart_30/presentation/treatment_details_screen/binding/treatment_details_binding.dart';
import 'package:orthosmart_30/presentation/new_treatment_screen/new_treatment_screen.dart';
import 'package:orthosmart_30/presentation/new_treatment_screen/binding/new_treatment_binding.dart';
import 'package:orthosmart_30/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:orthosmart_30/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startupScreen = '/startup_screen';

  static const String homeScreen = '/home_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String patientProfileScreen = '/patient_profile_screen';

  static const String caseDetailsScreen = '/case_details_screen';

  static const String mainPage = '/main_page';

  static const String mainPageContainerScreen = '/main_page_container_screen';

  static const String addPatientPersonalDetailsScreen =
      '/add_patient_personal_details_screen';

  static const String searchScreen = '/search_screen';

  static const String treatmentDetailsScreen = '/treatment_details_screen';

  static const String newTreatmentScreen = '/new_treatment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startupScreen,
      page: () => StartupScreen(),
      bindings: [
        StartupBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: patientProfileScreen,
      page: () => PatientProfileScreen(),
      bindings: [
        PatientProfileBinding(),
      ],
    ),
    GetPage(
      name: caseDetailsScreen,
      page: () => CaseDetailsScreen(),
      bindings: [
        CaseDetailsBinding(),
      ],
    ),
    GetPage(
      name: mainPageContainerScreen,
      page: () => MainPageContainerScreen(),
      bindings: [
        MainPageContainerBinding(),
      ],
    ),
    GetPage(
      name: addPatientPersonalDetailsScreen,
      page: () => AddPatientPersonalDetailsScreen(),
      bindings: [
        AddPatientPersonalDetailsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: treatmentDetailsScreen,
      page: () => TreatmentDetailsScreen(),
      bindings: [
        TreatmentDetailsBinding(),
      ],
    ),
    GetPage(
      name: newTreatmentScreen,
      page: () => NewTreatmentScreen(),
      bindings: [
        NewTreatmentBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartupScreen(),
      bindings: [
        StartupBinding(),
      ],
    )
  ];
}
