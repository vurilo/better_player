import 'package:mobilelms/core/utils/string_utils.dart';

enum Flavor { dev, prod }

class FlavorValues {
  FlavorValues({required this.baseUrl});
  final String baseUrl;
  //Add other flavor specific values, e.g database name
}

class FlavorConfig {
  final Flavor flavor;
  final String name;

  final FlavorValues values;
  static late FlavorConfig _instance;

  factory FlavorConfig({required Flavor flavor, required FlavorValues values}) {
    _instance = FlavorConfig._internal(
        flavor, StringUtils.enumName(flavor.toString()), values);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.name, this.values);
  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.prod;
  static bool isDevelopment() => _instance.flavor == Flavor.dev;
}
