// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  Computed<bool>? _$linkToExistingEventComputed;

  @override
  bool get linkToExistingEvent => (_$linkToExistingEventComputed ??=
          Computed<bool>(() => super.linkToExistingEvent,
              name: '_HomeStoreBase.linkToExistingEvent'))
      .value;
  Computed<bool>? _$includeGalleryComputed;

  @override
  bool get includeGallery =>
      (_$includeGalleryComputed ??= Computed<bool>(() => super.includeGallery,
              name: '_HomeStoreBase.includeGallery'))
          .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_HomeStoreBase.isLoading'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_HomeStoreBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_linkToExistingEventAtom =
      Atom(name: '_HomeStoreBase._linkToExistingEvent', context: context);

  @override
  bool get _linkToExistingEvent {
    _$_linkToExistingEventAtom.reportRead();
    return super._linkToExistingEvent;
  }

  @override
  set _linkToExistingEvent(bool value) {
    _$_linkToExistingEventAtom.reportWrite(value, super._linkToExistingEvent,
        () {
      super._linkToExistingEvent = value;
    });
  }

  late final _$_includeGalleryAtom =
      Atom(name: '_HomeStoreBase._includeGallery', context: context);

  @override
  bool get _includeGallery {
    _$_includeGalleryAtom.reportRead();
    return super._includeGallery;
  }

  @override
  set _includeGallery(bool value) {
    _$_includeGalleryAtom.reportWrite(value, super._includeGallery, () {
      super._includeGallery = value;
    });
  }

  late final _$selectedImagesAtom =
      Atom(name: '_HomeStoreBase.selectedImages', context: context);

  @override
  ObservableList<Map<String, dynamic>> get selectedImages {
    _$selectedImagesAtom.reportRead();
    return super.selectedImages;
  }

  @override
  set selectedImages(ObservableList<Map<String, dynamic>> value) {
    _$selectedImagesAtom.reportWrite(value, super.selectedImages, () {
      super.selectedImages = value;
    });
  }

  late final _$createDiaryEntryAsyncAction =
      AsyncAction('_HomeStoreBase.createDiaryEntry', context: context);

  @override
  Future<bool> createDiaryEntry(DiaryEntry entry) {
    return _$createDiaryEntryAsyncAction
        .run(() => super.createDiaryEntry(entry));
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void setLinkToExistingEvent(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setLinkToExistingEvent');
    try {
      return super.setLinkToExistingEvent(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIncludeGallery(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setIncludeGallery');
    try {
      return super.setIncludeGallery(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.dispose');
    try {
      return super.dispose();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedImages: ${selectedImages},
linkToExistingEvent: ${linkToExistingEvent},
includeGallery: ${includeGallery},
isLoading: ${isLoading}
    ''';
  }
}
