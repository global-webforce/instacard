import 'package:instacard/services/foo_isar_service.dart';
import 'package:instacard/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:instacard/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:instacard/ui/views/home/home_view.dart';
import 'package:instacard/ui/views/home/home_viewmodel.dart';
import 'package:instacard/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:instacard/services/local_storage_service.dart';
import 'package:instacard/services/sharedpreferences_local_storage_service.dart';
import 'package:instacard/services/foo_service.dart';

// @stacked-import
@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    InitializableSingleton(
      classType: SharedPreferencesLocalStorageService,
      asType: LocalStorageService,
    ),
    InitializableSingleton(
      classType: FooIsarService,
      asType: FooService,
    ),

    Singleton(classType: HomeViewModel),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
