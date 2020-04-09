// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on LoginStoreBase, Store {
  final _$isLoginLoadingAtom = Atom(name: 'LoginStoreBase.isLoginLoading');

  @override
  bool get isLoginLoading {
    _$isLoginLoadingAtom.context.enforceReadPolicy(_$isLoginLoadingAtom);
    _$isLoginLoadingAtom.reportObserved();
    return super.isLoginLoading;
  }

  @override
  set isLoginLoading(bool value) {
    _$isLoginLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoginLoading = value;
      _$isLoginLoadingAtom.reportChanged();
    }, _$isLoginLoadingAtom, name: '${_$isLoginLoadingAtom.name}_set');
  }

  final _$isOtpLoadingAtom = Atom(name: 'LoginStoreBase.isOtpLoading');

  @override
  bool get isOtpLoading {
    _$isOtpLoadingAtom.context.enforceReadPolicy(_$isOtpLoadingAtom);
    _$isOtpLoadingAtom.reportObserved();
    return super.isOtpLoading;
  }

  @override
  set isOtpLoading(bool value) {
    _$isOtpLoadingAtom.context.conditionallyRunInAction(() {
      super.isOtpLoading = value;
      _$isOtpLoadingAtom.reportChanged();
    }, _$isOtpLoadingAtom, name: '${_$isOtpLoadingAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'isLoginLoading: ${isLoginLoading.toString()},isOtpLoading: ${isOtpLoading.toString()}';
    return '{$string}';
  }
}
