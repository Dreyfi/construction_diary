// ignore_for_file: public_member_api_docs, sort_constructors_first
class DiaryEntry {
  String images;
  bool includeGallery;
  String comments;
  String date;
  String area;
  String tags;
  bool linkToExistingEvent;
  String event;
  String email;
  String password;
  DiaryEntry({
    required this.images,
    required this.includeGallery,
    required this.comments,
    required this.date,
    required this.area,
    required this.tags,
    required this.linkToExistingEvent,
    required this.event,
    required this.email,
    required this.password,
  });
}
