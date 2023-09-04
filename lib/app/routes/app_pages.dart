import 'package:get/get.dart';

import '../modules/content/campus/bindings/campus_binding.dart';
import '../modules/content/campus/views/campus_view.dart';
import '../modules/content/inews/bindings/inews_binding.dart';
import '../modules/content/inews/views/inews_view.dart';
import '../modules/content/lecturers/bindings/lecturers_binding.dart';
import '../modules/content/lecturers/views/lecturers_view.dart';
import '../modules/content/outreach/bindings/outreach_binding.dart';
import '../modules/content/outreach/views/outreach_view.dart';
import '../modules/content/research/bindings/research_binding.dart';
import '../modules/content/research/views/research_view.dart';
import '../modules/content/study/bindings/study_binding.dart';
import '../modules/content/study/views/study_view.dart';
import '../modules/content/termcondition/bindings/termcondition_binding.dart';
import '../modules/content/termcondition/views/termcondition_view.dart';
import '../modules/content/visionmission/bindings/visionmission_binding.dart';
import '../modules/content/visionmission/views/visionmission_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/ui/authentication/latestpassword/bindings/latestpassword_binding.dart';
import '../modules/ui/authentication/latestpassword/views/latestpassword_view.dart';
import '../modules/ui/authentication/login/bindings/login_binding.dart';
import '../modules/ui/authentication/login/views/login_view.dart';
import '../modules/ui/authentication/register/bindings/register_binding.dart';
import '../modules/ui/authentication/register/views/register_view.dart';
import '../modules/ui/authentication/resetpassword/bindings/resetpassword_binding.dart';
import '../modules/ui/authentication/resetpassword/views/resetpassword_view.dart';
import '../modules/ui/details/attendance/bindings/attendance_binding.dart';
import '../modules/ui/details/attendance/views/attendance_view.dart';
import '../modules/ui/details/discussion/bindings/discussion_binding.dart';
import '../modules/ui/details/discussion/views/discussion_view.dart';
import '../modules/ui/details/latestinews/bindings/latestinews_binding.dart';
import '../modules/ui/details/latestinews/views/latestinews_view.dart';
import '../modules/ui/details/lecturer/bindings/lecturer_binding.dart';
import '../modules/ui/details/lecturer/views/lecturer_view.dart';
import '../modules/ui/functionality/contact/bindings/contact_binding.dart';
import '../modules/ui/functionality/contact/views/contact_view.dart';
import '../modules/ui/functionality/home/bindings/home_binding.dart';
import '../modules/ui/functionality/home/views/home_view.dart';
import '../modules/ui/functionality/service/bindings/service_binding.dart';
import '../modules/ui/functionality/service/views/service_view.dart';
import '../modules/ui/functionality/task/bindings/task_binding.dart';
import '../modules/ui/functionality/task/views/task_view.dart';
import '../modules/ui/introduction/onboard/bindings/onboard_binding.dart';
import '../modules/ui/introduction/onboard/views/onboard_view.dart';
import '../modules/ui/introduction/onsplash/bindings/onsplash_binding.dart';
import '../modules/ui/introduction/onsplash/views/onsplash_view.dart';
import '../modules/ui/authentication/verification/bindings/verification_binding.dart';
import '../modules/ui/authentication/verification/views/verification_view.dart';

// onboadScreen
// onsplashScreen
// attendanceScreen
// campusScreen
// inewsScreen
// lecturersScreen
// outreachScreen
// researchScreen
// studyScreen
// termconditionScreen
// visionmissionScreen
// discussionScreen
// mainScreen
// serviceScreen
// latestpasswordScreen
// loginScreen
// registerScreen
// resetPasswordScreen
// latestinewsScreen
// lecturerScreen
// contactScreen
// homeScreen
// taskScreen

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONSPLASH;

  static final routes = [
    GetPage(
      name: _Paths.ONSPLASH,
      page: () => const OnsplashView(),
      binding: OnsplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.RESETPASSWORD,
      page: () => const ResetpasswordView(),
      binding: ResetpasswordBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.LATESTPASSWORD,
      page: () => const LatestpasswordView(),
      binding: LatestpasswordBinding(),
    ),
    GetPage(
      name: _Paths.TASK,
      page: () => const TaskView(),
      binding: TaskBinding(),
    ),
    GetPage(
      name: _Paths.TERMCONDITION,
      page: () => const TermconditionView(),
      binding: TermconditionBinding(),
    ),
    GetPage(
      name: _Paths.VISIONMISSION,
      page: () => const VisionmissionView(),
      binding: VisionmissionBinding(),
    ),
    GetPage(
      name: _Paths.INEWS,
      page: () => const InewsView(),
      binding: InewsBinding(),
    ),
    GetPage(
      name: _Paths.LATESTINEWS,
      page: () => const LatestinewsView(),
      binding: LatestinewsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => const ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: _Paths.LECTURER,
      page: () => const LecturerView(),
      binding: LecturerBinding(),
    ),
    GetPage(
      name: _Paths.LECTURERS,
      page: () => const LecturersView(),
      binding: LecturersBinding(),
    ),
    GetPage(
      name: _Paths.CAMPUS,
      page: () => const CampusView(),
      binding: CampusBinding(),
    ),
    GetPage(
      name: _Paths.STUDY,
      page: () => const StudyView(),
      binding: StudyBinding(),
    ),
    GetPage(
      name: _Paths.RESEARCH,
      page: () => const ResearchView(),
      binding: ResearchBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE,
      page: () => const ServiceView(),
      binding: ServiceBinding(),
      children: [
        GetPage(
          name: _Paths.SERVICE,
          page: () => const ServiceView(),
          binding: ServiceBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.OUTREACH,
      page: () => const OutreachView(),
      binding: OutreachBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDANCE,
      page: () => const AttendanceView(),
      binding: AttendanceBinding(),
    ),
    GetPage(
      name: _Paths.DISCUSSION,
      page: () => const DiscussionView(),
      binding: DiscussionBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
  ];
}
