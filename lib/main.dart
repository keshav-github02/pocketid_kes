import 'package:flutter/material.dart';
import 'package:pocketid_kes/HomePage/DocImagePage.dart';
import 'package:pocketid_kes/HomePage/HomePage.dart';
import 'package:pocketid_kes/menuItems/myProfile.dart';
import 'package:pocketid_kes/menuItems/settings.dart';

import 'SplashScreen/SplashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PocketID",
      debugShowCheckedModeBanner: false,
      //themeMode: provider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:SplashScreen(),
      //home: const SplashScreen(),
    );
  }
}
