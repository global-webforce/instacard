import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instacard/app/app.bottomsheets.dart';
import 'package:instacard/app/app.dialogs.dart';
import 'package:instacard/app/app.locator.dart';
import 'package:instacard/app/app.router.dart';
import 'package:instacard/firebase_options.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await isarInitialize();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.fooView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.amber,
          useMaterial3: false),
    );
  }
}

Future isarInitialize() async {
  if (Isar.instanceNames.isEmpty) {
    final dir = await getApplicationDocumentsDirectory();
    await Isar.open([FooDtoSchema], directory: dir.path);
  }
}
