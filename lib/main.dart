import 'package:animation/controller/animated_provider.dart';
import 'package:animation/view/details/details.dart';
import 'package:animation/view/homepage/hompage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          useMaterial3: true,
          
        ),
        
      routes:{
      '/':(context) => HomePage(),
      '/DetailsPage':(context) => DetailsPage()
      }
      );
    
  }
}
