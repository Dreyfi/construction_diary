import 'package:construction_diary/app/features/home/data/datasources/home_datasource.dart';
import 'package:construction_diary/app/features/home/domain/entities/diary_entry.dart';
import 'package:construction_diary/app/features/home/presentation/home_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<HomeDataSourceImpl>()])
import 'home_store_test.mocks.dart';

void main() {
  final homeStore = HomeStore(MockHomeDataSourceImpl());
  group('Home Store', () {
    test('createDiaryEntry should return true', () async {
      final create = await homeStore.createDiaryEntry(DiaryEntry(
          images: 'images',
          includeGallery: true,
          comments: 'comments',
          date: 'date',
          area: 'area',
          tags: 'tags',
          linkToExistingEvent: true,
          event: 'event',
          email: 'email',
          password: 'password'));
      expect(create, true);
    });
  });
}
