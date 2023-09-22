import 'package:animation/controller/animated_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../homepage/hompage.dart';

// String? chageLocal;

class DrawButton extends StatelessWidget {
  DrawButton({super.key});

  Locale appLocale = const Locale("en");

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 160, 246, 204)),
            child: Text(
              'Langauge Settings',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text(
              'English',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              changeLocale(context,Locale('en'));
            },
          ),
          ListTile(
            title: const Text(
              'Hindi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
           changeLocale(context,Locale('hi'));
            },
          ),
          ListTile(
            title: const Text(
              'Spanish',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
            changeLocale(context,Locale('es'));
            },
          ),
        ],
      ),
    );
  }

  void changeLocale(BuildContext context,  Locale locale) {
    Provider.of<LocaleProvider>(context,listen: false).changeLocale(locale);
  }
}

