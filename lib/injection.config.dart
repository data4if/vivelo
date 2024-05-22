// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vivelo/domain/auth/interface_auth_facade.dart' as _i7;
import 'package:vivelo/domain/user/email_address.dart' as _i5;
import 'package:vivelo/domain/user/user_password.dart' as _i6;
import 'package:vivelo/infrastructure/firebase/firebase_auth_facade.dart'
    as _i8;
import 'package:vivelo/infrastructure/firebase_core/firebase_injectable_module.dart'
    as _i9;

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
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
    gh.singleton<_i4.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
    gh.factory<_i5.EmailAddress>(() => _i5.EmailAddress(gh<String>()));
    gh.factory<_i6.Password>(() => _i6.Password(gh<String>()));
    gh.factory<_i7.InterfaceAuthFacade>(
      () => _i8.FirebaseAuthFacade(
        gh<_i4.FirebaseAuth>(),
        gh<_i3.GoogleSignIn>(),
      ),
      instanceName: 'Autenticacion',
    );
    return this;
  }
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
