import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

class TheLocationHeaderWidget extends StatelessWidget {
  const TheLocationHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        width: double.infinity,
        color: ConstructionDiaryLight.bodyColor,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: ConstructionDiaryLight.textColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '20041075 | TAP-NS TAP-North Strathfield',
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ));
  }
}
