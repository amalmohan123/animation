
import 'package:animation/view/widgets/materialapp.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:animation/controller/animated_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ListenableProvider(
        create: (context) => LocaleProvider(),
      )
    ], child: const MyMeterialApp());
  }
}
