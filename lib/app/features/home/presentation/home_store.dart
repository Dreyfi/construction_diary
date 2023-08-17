import 'package:construction_diary/app/features/home/data/datasources/home_datasource.dart';
import 'package:construction_diary/app/features/home/domain/entities/diary_entry.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  bool _isLoading = false;

  @action
  void setLoading(bool value) => _isLoading = value;

  @computed
  bool get isLoading => _isLoading;

  final HomeDataSource _homeDatasource;

  _HomeStoreBase(this._homeDatasource);

  @action
  Future<bool> createDiaryEntry(DiaryEntry entry) async {
    setLoading(true);
    _homeDatasource.createDiaryEntry(entry);
    setLoading(false);
    return true;
  }
}
