import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

class TheGalleryCheckboxWidget extends StatelessWidget {
  final bool initialValue;
  final void Function(bool? value) onChange;
  const TheGalleryCheckboxWidget(
      {super.key, required this.initialValue, required this.onChange});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          ResourcesStrings.includeInPhotoGallery(),
          style: theme.textTheme.bodySmall
              ?.copyWith(color: ConstructionDiaryLight.textColorLight),
        ),
        const Spacer(),
        Checkbox(
          value: initialValue,
          onChanged: (value) => onChange(value),
        )
      ],
    );
  }
}
