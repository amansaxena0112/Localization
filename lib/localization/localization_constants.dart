import 'package:flutter/cupertino.dart';
import 'package:localization_app/localization/demo_localization.dart';

String getTranslated(BuildContext context, String key) {
  print(context);
  print(DemoLocalization.of(context));
  return DemoLocalization.of(context).getTranslatedValue(key);
}
