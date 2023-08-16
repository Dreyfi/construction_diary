import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

class TheButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final double? width;
  final bool expanded;
  const TheButtonWidget(
      {super.key,
      required this.onPressed,
      required this.label,
      this.width,
      this.expanded = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: SizedBox(
          width: expanded ? double.infinity : width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: ConstructionDiaryLight.buttonTextStyle,
            ),
          ),
        ));
  }
}
