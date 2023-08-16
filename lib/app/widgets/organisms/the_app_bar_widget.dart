import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:flutter/material.dart';

class TheAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  const TheAppBarWidget(
      {super.key, this.leading, this.actions, required this.title})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
        backgroundColor: theme.primaryColorDark,
        iconTheme: IconThemeData(
          color: theme.primaryColor,
        ),
        title: Text(
          title,
          style: theme.textTheme.titleSmall
              ?.copyWith(color: ConstructionDiaryLight.bodyColor),
        ),
        elevation: 0,
        leading: leading,
        actions: actions);
  }
}
