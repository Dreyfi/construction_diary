import 'package:construction_diary/app/features/home/domain/entities/diary_entry.dart';

class DiaryEntryMapper {
  static DiaryEntry fromJson(Map<String, dynamic> json) {
    return DiaryEntry(
      images: json['image'],
      includeGallery: json['includeGallery'],
      comments: json['comments'],
      date: json['date'],
      area: json['area'],
      tags: json['tags'],
      linkToExistingEvent: json['linkToExistingEvent'],
      event: json['event'],
      email: json['email'],
      password: json['password'],
    );
  }

  static Map<String, dynamic> toJson(DiaryEntry diaryEntry) {
    return {
      'images': diaryEntry.images,
      'includeGallery': diaryEntry.includeGallery,
      'comments': diaryEntry.comments,
      'date': diaryEntry.date,
      'area': diaryEntry.area,
      'tags': diaryEntry.tags,
      'linkToExistingEvent': diaryEntry.linkToExistingEvent,
      'event': diaryEntry.event,
      'email': diaryEntry.email,
      'password': diaryEntry.password,
    };
  }
}
