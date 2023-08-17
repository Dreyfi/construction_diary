import 'package:flutter/material.dart';

class TheLoadingWidget extends StatelessWidget {
  const TheLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 2 - 50),
      child: const CircularProgressIndicator(),
    ));
  }
}
