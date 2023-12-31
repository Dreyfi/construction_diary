import 'package:asuka/asuka.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

import 'app/app_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Construction Diary App',
      theme: ConstructionDiaryLight.buildTheme(context),
      builder: Asuka.builder,
      navigatorObservers: [Asuka.asukaHeroController],
      home: const AppWidget(),
    );
  }
}
