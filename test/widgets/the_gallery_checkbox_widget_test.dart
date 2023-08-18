import 'package:construction_diary/app/core/resources/resources_strings.dart';
import 'package:construction_diary/app/features/home/presentation/widgets/the_gallery_checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Gallery checkbox should be changed', (tester) async {
    bool? testValue = false;
    await tester.pumpWidget(MaterialApp(
        home: Material(
            child: TheGalleryCheckboxWidget(
                initialValue: testValue,
                onChange: (value) {
                  testValue = value;
                }))));
    await tester.tap(find.byType(Checkbox));
    await tester.pump();

    expect(testValue, true);
    expect(find.text(ResourcesStrings.includeInPhotoGallery()), findsOneWidget);
  });
}
