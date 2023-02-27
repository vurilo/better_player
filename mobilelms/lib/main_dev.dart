import 'package:flutter/material.dart';
import 'package:mobilelms/common_app.dart';
import 'package:mobilelms/core/utils/flavor_config.dart';
import 'core/configurations/development_configuration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
      flavor: Flavor.dev,
      values: FlavorValues(baseUrl: AppConfiguration.kApiBaseUrl));
  runApp(const CommonApp());
}
