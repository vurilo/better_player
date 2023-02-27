import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilelms/core/constants/string_constants.dart';
import 'package:mobilelms/core/routes/app_routes.dart';
import 'package:mobilelms/core/theme/app_theme.dart';
import 'package:mobilelms/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'core/storage/preferences/preferences_.dart';

class VuriloApp extends StatefulWidget {
  const VuriloApp({Key? key}) : super(key: key);

  @override
  State<VuriloApp> createState() => _VuriloAppState();
}

class _VuriloAppState extends State<VuriloApp> {
  Preferences? _preferences;
  late final GoRouter router = AppRoute().router;
  @override
  void initState() {
    super.initState();
    _preferences = Preferences();
    initApp();
  }

  void initApp() async {
    await _preferences?.getAppLocale();
    await _preferences?.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Preferences>(builder: (context, provider, child) {
      return MaterialApp.router(
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        darkTheme: AppTheme.darkThemeData,
        title: StringConstants.kAppName,
        theme: AppTheme.lightThemeData,
        themeMode: provider.currentThemeMode,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: provider.locale,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
