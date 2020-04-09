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

  final _$loginScaffoldKeyAtom = Atom(name: 'LoginStoreBase.loginScaffoldKey');

  @override
  GlobalKey<ScaffoldState> get loginScaffoldKey {
    _$loginScaffoldKeyAtom.context.enforceReadPolicy(_$loginScaffoldKeyAtom);
    _$loginScaffoldKeyAtom.reportObserved();
    return super.loginScaffoldKey;
  }

  @override
  set loginScaffoldKey(GlobalKey<ScaffoldState> value) {
    _$loginScaffoldKeyAtom.context.conditionallyRunInAction(() {
      super.loginScaffoldKey = value;
      _$loginScaffoldKeyAtom.reportChanged();
    }, _$loginScaffoldKeyAtom, name: '${_$loginScaffoldKeyAtom.name}_set');
  }

  final _$otpScaffoldKeyAtom = Atom(name: 'LoginStoreBase.otpScaffoldKey');

  @override
  GlobalKey<ScaffoldState> get otpScaffoldKey {
    _$otpScaffoldKeyAtom.context.enforceReadPolicy(_$otpScaffoldKeyAtom);
    _$otpScaffoldKeyAtom.reportObserved();
    return super.otpScaffoldKey;
  }

  @override
  set otpScaffoldKey(GlobalKey<ScaffoldState> value) {
    _$otpScaffoldKeyAtom.context.conditionallyRunInAction(() {
      super.otpScaffoldKey = value;
      _$otpScaffoldKeyAtom.reportChanged();
    }, _$otpScaffoldKeyAtom, name: '${_$otpScaffoldKeyAtom.name}_set');
  }

  final _$firebaseUserAtom = Atom(name: 'LoginStoreBase.firebaseUser');

  @override
  FirebaseUser get firebaseUser {
    _$firebaseUserAtom.context.enforceReadPolicy(_$firebaseUserAtom);
    _$firebaseUserAtom.reportObserved();
    return super.firebaseUser;
  }

  @override
  set firebaseUser(FirebaseUser value) {
    _$firebaseUserAtom.context.conditionallyRunInAction(() {
      super.firebaseUser = value;
      _$firebaseUserAtom.reportChanged();
    }, _$firebaseUserAtom, name: '${_$firebaseUserAtom.name}_set');
  }

  final _$isAlreadyAuthenticatedAsyncAction =
      AsyncAction('isAlreadyAuthenticated');

  @override
  Future<bool> isAlreadyAuthenticated() {
    return _$isAlreadyAuthenticatedAsyncAction
        .run(() => super.isAlreadyAuthenticated());
  }

  final _$getCodeWithPhoneNumberAsyncAction =
      AsyncAction('getCodeWithPhoneNumber');

  @override
  Future<void> getCodeWithPhoneNumber(
      BuildContext context, String phoneNumber) {
    return _$getCodeWithPhoneNumberAsyncAction
        .run(() => super.getCodeWithPhoneNumber(context, phoneNumber));
  }

  final _$validateOtpAndLoginAsyncAction = AsyncAction('validateOtpAndLogin');

  @override
  Future<void> validateOtpAndLogin(BuildContext context, String smsCode) {
    return _$validateOtpAndLoginAsyncAction
        .run(() => super.validateOtpAndLogin(context, smsCode));
  }

  final _$signOutAsyncAction = AsyncAction('signOut');

  @override
  Future<void> signOut(BuildContext context) {
    return _$signOutAsyncAction.run(() => super.signOut(context));
  }

  @override
  String toString() {
    final string =
        'isLoginLoading: ${isLoginLoading.toString()},isOtpLoading: ${isOtpLoading.toString()},loginScaffoldKey: ${loginScaffoldKey.toString()},otpScaffoldKey: ${otpScaffoldKey.toString()},firebaseUser: ${firebaseUser.toString()}';
    return '{$string}';
  }
}
