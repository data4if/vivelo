// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vivelo/infrastructure/module/app_auth_module.dart' as _i6;
import 'package:vivelo/infrastructure/module/app_store_module.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appStoreModule = _$AppStoreModule();
    final appAuthModule = _$AppAuthModule();
    gh.factory<_i3.FirebaseFirestore>(() => appStoreModule.store);
    gh.factory<_i4.FirebaseAuth>(() => appAuthModule.auth);
    return this;
  }
}

class _$AppStoreModule extends _i5.AppStoreModule {}

class _$AppAuthModule extends _i6.AppAuthModule {}
