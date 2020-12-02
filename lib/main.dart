import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_app/language.dart';
import 'package:localization_app/localization/demo_localization.dart';
import 'package:localization_app/localization/localization_constants.dart';
import 'package:localization_app/routes/custom_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  static void setLocale(BuildContext context, String code) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.incrementCounter(code);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('en', 'US');
  void incrementCounter(String code) {
    setState(() {
      switch (code) {
        case 'en':
          _locale = Locale(code, 'US');
          break;
        case 'ar':
          _locale = Locale(code, 'SA');
          break;
        case 'hi':
          _locale = Locale(code, 'IN');
          break;
        case 'ps':
          _locale = Locale(code, 'AR');
          break;
        default:
          _locale = Locale(code, 'US');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'SA'),
        Locale('ps', 'AR'),
        Locale('hi', 'IN'),
      ],
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      localeResolutionCallback: (locale, supportedLocales) {
        for (var local in supportedLocales) {
          if (local.languageCode == locale.languageCode &&
              local.countryCode == locale.countryCode) {
            return locale;
          }
        }
        return supportedLocales.first;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: CustomRouter.allRoutes,
      initialRoute: '/',
    );
  }
}
