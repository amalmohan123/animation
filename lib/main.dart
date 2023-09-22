import 'package:animation/view/homepage/hompage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:intl/intl.dart';
// import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //  ChangeNotifierProvider(
        //   create: (context) => AnimatedProvider(),
        MaterialApp(
          
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              scaffoldBackgroundColor: const Color.fromARGB(255, 160, 246, 204),
              useMaterial3: true, 
            ),
              localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale("hi"),
            supportedLocales: const [Locale('en'), Locale("hi")],
            routes: {
              '/': (context) => const HomePage(),
              // '/DetailsPage':(context) => const DetailsPage(trips: null,);
            });
  }
}
