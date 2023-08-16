import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:construction_diary/app/features/home/presentation/widgets/the_location_header_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_button_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_card_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_field_widget.dart';
import 'package:construction_diary/app/widgets/organisms/the_app_bar_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _tagsController = TextEditingController();
  final TextEditingController _commentsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ConstructionDiaryLight.canvasColor,
      appBar: TheAppBarWidget(
        title: ResourcesStrings.newDiary(),
        leading: const Icon(
          Icons.close,
          color: ConstructionDiaryLight.bodyColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TheLocationHeaderWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ResourcesStrings.addToSiteDiary(),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(height: 16),
                  TheCardWidget(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ResourcesStrings.addPhotosToSiteDiary()),
                        const Divider(),
                        TheButtonWidget(
                          label: ResourcesStrings.addAphoto(),
                          onPressed: () {},
                        ),
                        Row(
                          children: [
                            Text(
                              ResourcesStrings.includeInPhotoGallery(),
                              style: theme.textTheme.bodySmall?.copyWith(
                                  color: ConstructionDiaryLight.textColorLight),
                            ),
                            const Spacer(),
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TheCardWidget(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ResourcesStrings.comments(),
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w900)),
                        const Divider(),
                        TheFieldWidget(
                          hint: ResourcesStrings.comments(),
                          controller: _commentsController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TheCardWidget(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ResourcesStrings.details(),
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w900),
                        ),
                        const Divider(),
                        DropdownButton<String>(
                            isExpanded: true,
                            style: theme.textTheme.bodyMedium,
                            value: '2020-06-29',
                            items: ['2020-06-29']
                                .map<DropdownMenuItem<String>>((String value) =>
                                    DropdownMenuItem(
                                        value: value, child: Text(value)))
                                .toList(),
                            onChanged: (value) {}),
                        const SizedBox(
                          height: 8,
                        ),
                        DropdownButton<String>(
                            isExpanded: true,
                            style: theme.textTheme.bodyMedium,
                            value: ResourcesStrings.selectArea(),
                            items: ['Select Area', 'Test2']
                                .map<DropdownMenuItem<String>>((String value) =>
                                    DropdownMenuItem(
                                        value: value, child: Text(value)))
                                .toList(),
                            onChanged: (value) {}),
                        const SizedBox(
                          height: 8,
                        ),
                        DropdownButton<String>(
                            isExpanded: true,
                            style: theme.textTheme.bodyMedium,
                            value: ResourcesStrings.taskCategory(),
                            items: ['Task Category', 'Test']
                                .map<DropdownMenuItem<String>>((String value) =>
                                    DropdownMenuItem(
                                        value: value, child: Text(value)))
                                .toList(),
                            onChanged: (value) {}),
                        const SizedBox(
                          height: 8,
                        ),
                        TheFieldWidget(
                          hint: ResourcesStrings.tags(),
                          controller: _tagsController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TheCardWidget(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ResourcesStrings.linkToExistingEvent(),
                              style: theme.textTheme.bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w900),
                            ),
                            Checkbox(value: true, onChanged: (value) {})
                          ],
                        ),
                        const Divider(),
                        DropdownButton<String>(
                            isExpanded: true,
                            style: theme.textTheme.bodyMedium,
                            value: ResourcesStrings.selectAnEvent(),
                            items: ['Select an event', 'Test4']
                                .map<DropdownMenuItem<String>>((String value) =>
                                    DropdownMenuItem(
                                        value: value, child: Text(value)))
                                .toList(),
                            onChanged: (value) {}),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TheButtonWidget(
                    label: ResourcesStrings.next(),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
