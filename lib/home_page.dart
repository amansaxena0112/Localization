import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_app/language.dart';
import 'package:localization_app/localization/demo_localization.dart';
import 'package:localization_app/localization/localization_constants.dart';
import 'package:localization_app/main.dart';

class HomePage extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              getTranslated(context, 'msg'),
            ),
            Text(
              getTranslated(context, 'name')
                  .replaceAll(new RegExp(r'\${name}'), 'Aman'),
            ),
            DropdownButton(
                hint: Text(getTranslated(context, 'hint')),
                items: getLanguages.map((Language lang) {
                  return DropdownMenuItem<String>(
                    value: lang.languageCode,
                    child: Text(lang.name),
                  );
                }).toList(),
                onChanged: (code) {
                  MyApp.setLocale(context, code);
                }),
          ],
        ),
      ),
    );
  }
}
