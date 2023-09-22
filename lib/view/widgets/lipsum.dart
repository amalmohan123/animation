import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Lipsim extends StatelessWidget {
  const Lipsim({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text( AppLocalizations.of(context).counterMsg);
  }
}
