import 'package:construction_diary/app/core/resources/resources_constants.dart';
import 'package:construction_diary/app/features/home/domain/entities/diary_entry.dart';
import 'package:construction_diary/app/features/home/domain/mappers/diary_entry_mapper.dart';
import 'package:uno/uno.dart';

abstract class HomeDataSource {
  Future<bool> createDiaryEntry(DiaryEntry entry);
}

class HomeDataSourceImpl implements HomeDataSource {
  @override
  Future<bool> createDiaryEntry(DiaryEntry entry) async {
    final uno = Uno();

    final Map<String, String> _headers = {};
    _headers["Content-Type"] = "application/json";
    _headers["Accept"] = "application/json";

    uno.post('https://reqres.in/api/register',
        data: DiaryEntryMapper.toJson(entry), headers: _headers);
    return true;
  }
}
