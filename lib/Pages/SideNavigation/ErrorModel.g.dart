// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ErrorModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ErrorModel on _ErrorModelBase, Store {
  late final _$selectedIndexAtom =
      Atom(name: '_ErrorModelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$_ErrorModelBaseActionController =
      ActionController(name: '_ErrorModelBase', context: context);

  @override
  void setCurrentIndex({required int selectedIndex}) {
    final _$actionInfo = _$_ErrorModelBaseActionController.startAction(
        name: '_ErrorModelBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(selectedIndex: selectedIndex);
    } finally {
      _$_ErrorModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
