import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/core/themes/construction_diary_light.dart';
import 'package:construction_diary/app/widgets/molecules/the_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class TheGalleryWidget extends StatefulWidget {
  final ObservableList<Map<String, dynamic>> selectedImages;
  final void Function() onPickImagePressed;
  final void Function(int index) onRemoveImagePressed;
  const TheGalleryWidget(
      {super.key,
      required this.selectedImages,
      required this.onPickImagePressed,
      required this.onRemoveImagePressed});

  @override
  State<TheGalleryWidget> createState() => _TheGalleryWidgetState();
}

class _TheGalleryWidgetState extends State<TheGalleryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.selectedImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            Image.file(
                              widget.selectedImages[index]['file'],
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: GestureDetector(
                                    onTap: () =>
                                        widget.onRemoveImagePressed(index),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: ConstructionDiaryLight
                                              .neutralBlack),
                                      child: const Icon(
                                        Icons.close,
                                        size: 16,
                                        color: ConstructionDiaryLight.bodyColor,
                                      ),
                                    )))
                          ],
                        ),
                      );
                    }))
          ],
        ),
        TheButtonWidget(
          label: ResourcesStrings.addAphoto(),
          onPressed: widget.onPickImagePressed,
        ),
      ],
    );
  }
}
