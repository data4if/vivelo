// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc_auth/auth_bloc.dart' as _i4;
import 'application/auth/bloc_register/register_bloc.dart' as _i3;
import 'application/auth/bloc_sign_in/sign_in_bloc.dart' as _i10;
import 'domain/auth/interface_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_module.dart' as _i11;
import 'infrastructure/firebase/firebase_auth_facade.dart' as _i9;

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
    final firebaseCoreModule = _$FirebaseCoreModule();
    gh.factory<_i3.RegisterFormBloc>(() => _i3.RegisterFormBloc());
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.lazySingleton<_i5.FirebaseAuth>(() => firebaseCoreModule.firebaseAuth);
    gh.lazySingleton<_i6.GoogleSignIn>(() => firebaseCoreModule.googleSignIn);
    gh.lazySingleton<_i7.FirebaseFirestore>(() => firebaseCoreModule.firestore);
    gh.lazySingleton<_i8.InterfaceAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.factory<_i10.SignInBloc>(
        () => _i10.SignInBloc(gh<_i8.InterfaceAuthFacade>()));
    return this;
  }
}

class _$FirebaseCoreModule extends _i11.FirebaseCoreModule {}
