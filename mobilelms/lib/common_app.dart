import 'package:flutter/material.dart';
import 'package:mobilelms/app.dart';
import 'package:mobilelms/core/storage/preferences/preferences_.dart';
import 'package:provider/provider.dart';

class CommonApp extends StatelessWidget {
  const CommonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Preferences()),
      ],
      child: const VuriloApp(),
    );
  }
}
