import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

class TheFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const TheFieldWidget(
      {super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      style: theme.textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        hintText: hint,
        hintStyle: theme.textTheme.bodySmall
            ?.copyWith(color: ConstructionDiaryLight.textColorLight),
      ),
    );
  }
}
