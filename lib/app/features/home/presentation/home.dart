import 'dart:convert';
import 'dart:io';

import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:construction_diary/app/features/home/domain/entities/diary_entry.dart';
import 'package:construction_diary/app/features/home/presentation/home_store.dart';
import 'package:construction_diary/app/features/home/presentation/widgets/the_gallery_checkbox_widget.dart';
import 'package:construction_diary/app/features/home/presentation/widgets/the_location_header_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_button_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_card_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_field_widget.dart';
import 'package:construction_diary/app/widgets/molecules/the_loading_widget.dart';
import 'package:construction_diary/app/widgets/organisms/the_app_bar_widget.dart';
import 'package:construction_diary/app/widgets/organisms/the_gallery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  final HomeStore homeStore;
  const Home({super.key, required this.homeStore});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _commentsController = TextEditingController();
  final TextEditingController _dateController =
      TextEditingController(text: '2020-06-29');
  final TextEditingController _areaController =
      TextEditingController(text: 'Select Area');
  final TextEditingController _taskController =
      TextEditingController(text: 'Task Category');
  final TextEditingController _tagsController = TextEditingController();
  final TextEditingController _eventController =
      TextEditingController(text: 'Select an event');

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image?.path != null) {
      final bytes = await image?.readAsBytes();
      final String? base64 = bytes != null ? base64Encode(bytes) : null;

      setState(() {
        widget.homeStore.selectedImages
            .add({'file': File(image!.path), 'hash': base64});
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      widget.homeStore.selectedImages.removeAt(index);
    });
  }

  @override
  void dispose() {
    _commentsController.dispose();
    _dateController.dispose();
    _areaController.dispose();
    _taskController.dispose();
    _tagsController.dispose();
    _eventController.dispose();
    widget.homeStore.dispose();
    super.dispose();
  }

  void _clearFields() {
    _commentsController.text = '';
    _dateController.text = '2020-06-29';
    _areaController.text = 'Select Area';
    _taskController.text = 'Task Category';
    _tagsController.text = '';
    _eventController.text = 'Select an event';
    widget.homeStore.dispose();
  }

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
        child: Observer(builder: (context) {
          return widget.homeStore.isLoading
              ? const TheLoadingWidget()
              : Column(
                  children: [
                    const TheLocationHeaderWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 16),
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
                                TheGalleryWidget(
                                    selectedImages:
                                        widget.homeStore.selectedImages,
                                    onRemoveImagePressed: (int index) =>
                                        _removeImage(index),
                                    onPickImagePressed: _pickImage),
                                TheGalleryCheckboxWidget(
                                    initialValue:
                                        widget.homeStore.includeGallery,
                                    onChange: (value) {
                                      widget.homeStore
                                          .setIncludeGallery(value ?? false);
                                    })
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
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w900)),
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
                                // TODO: Add showDatePicker
                                DropdownButton<String>(
                                    isExpanded: true,
                                    style: theme.textTheme.bodyMedium,
                                    value: _dateController.text,
                                    items: ['2020-06-29', '2020-07-01']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) => DropdownMenuItem(
                                                value: value,
                                                child: Text(value)))
                                        .toList(),
                                    onChanged: (value) {
                                      if (value != null) {
                                        setState(() {
                                          _dateController.text = value;
                                        });
                                      }
                                    }),
                                const SizedBox(
                                  height: 8,
                                ),
                                DropdownButton<String>(
                                    isExpanded: true,
                                    style: theme.textTheme.bodyMedium,
                                    value: _areaController.text,
                                    items: ['Select Area', 'Test2']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) => DropdownMenuItem(
                                                value: value,
                                                child: Text(value)))
                                        .toList(),
                                    onChanged: (value) {
                                      if (value != null) {
                                        setState(() {
                                          _areaController.text = value;
                                        });
                                      }
                                    }),
                                const SizedBox(
                                  height: 8,
                                ),
                                DropdownButton<String>(
                                    isExpanded: true,
                                    style: theme.textTheme.bodyMedium,
                                    value: _taskController.text,
                                    items: ['Task Category', 'Test']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) => DropdownMenuItem(
                                                value: value,
                                                child: Text(value)))
                                        .toList(),
                                    onChanged: (value) {
                                      if (value != null) {
                                        setState(() {
                                          _taskController.text = value;
                                        });
                                      }
                                    }),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ResourcesStrings.linkToExistingEvent(),
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w900),
                                    ),
                                    Checkbox(
                                        value: widget
                                            .homeStore.linkToExistingEvent,
                                        onChanged: (value) {
                                          widget.homeStore
                                              .setLinkToExistingEvent(
                                                  value ?? false);
                                        })
                                  ],
                                ),
                                const Divider(),
                                DropdownButton<String>(
                                    isExpanded: true,
                                    style: theme.textTheme.bodyMedium,
                                    value: _eventController.text,
                                    items: ['Select an event', 'Test4']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) => DropdownMenuItem(
                                                value: value,
                                                child: Text(value)))
                                        .toList(),
                                    onChanged: (value) {
                                      if (value != null) {
                                        setState(() {
                                          _eventController.text = value;
                                        });
                                      }
                                    }),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TheButtonWidget(
                            label: ResourcesStrings.next(),
                            onPressed: () async {
                              final map = widget.homeStore.selectedImages
                                  .map((e) => {'hash': e['hash']})
                                  .toList();
                              final list = json.encode(map);
                              final base64List = base64Encode(list.codeUnits);

                              final response = await widget.homeStore
                                  .createDiaryEntry(DiaryEntry(
                                      images: base64List,
                                      includeGallery:
                                          widget.homeStore.includeGallery,
                                      comments: _commentsController.text,
                                      date: _dateController.text,
                                      area: _areaController.text,
                                      tags: _tagsController.text,
                                      linkToExistingEvent:
                                          widget.homeStore.linkToExistingEvent,
                                      event: _eventController.text,
                                      email: 'eve.holt@reqres.in',
                                      password: 'pistol'));

                              if (response) {
                                AsukaSnackbar.success(
                                        "Information sent, thank you!")
                                    .show();

                                _clearFields();
                              }
                            },
                          ),
                          const SizedBox(
                            height: 24,
                          )
                        ],
                      ),
                    )
                  ],
                );
        }),
      ),
    );
  }
}
