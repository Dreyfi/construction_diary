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

    final Map<String, String> headers = {};
    headers["Content-Type"] = "application/json";
    headers["Accept"] = "application/json";

    await uno.post('${ResourcesConstants.apiUlr}posts',
        data: DiaryEntryMapper.toJson(entry), headers: headers);
    return true;
  }
}
