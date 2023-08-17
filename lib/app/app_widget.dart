import 'package:construction_diary/app/features/home/data/datasources/home_datasource.dart';
import 'package:construction_diary/app/features/home/presentation/home.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/home_store.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return Home(homeStore: HomeStore(HomeDataSourceImpl()));
  }
}
