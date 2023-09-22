import 'package:animation/controller/animated_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../homepage/hompage.dart';

class MyMeterialApp extends StatelessWidget {
  const MyMeterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: const Color.fromARGB(255, 160, 246, 204),
          useMaterial3: true,
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Provider.of<LocaleProvider>(context).appLocale,
        supportedLocales: const [Locale('en'), Locale("hi"), Locale('es')],
        routes: {
          '/': (context) => const HomePage(),
          // '/DetailsPage':(context) => const DetailsPage(trips: null,);
        }
    );
  }
}