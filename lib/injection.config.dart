// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vivelo/application/auth/bloc_auth/auth_bloc.dart' as _i4;
import 'package:vivelo/application/auth/bloc_register/register_form_bloc.dart'
    as _i3;
import 'package:vivelo/application/auth/bloc_sign_in/sign_in_form_bloc.dart'
    as _i9;
import 'package:vivelo/domain/auth/interface_auth_facade.dart' as _i6;
import 'package:vivelo/infrastructure/core/firebase_module.dart' as _i11;
import 'package:vivelo/infrastructure/firebase/firebase_auth_facade.dart'
    as _i10;

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
    gh.singleton<_i5.FirebaseFirestore>(() => firebaseCoreModule.firestore);
    gh.singleton<_i6.InterfaceAuthFacade>(() => firebaseCoreModule.authFacade);
    gh.lazySingleton<_i7.FirebaseAuth>(() => firebaseCoreModule.firebaseAuth);
    gh.lazySingleton<_i8.GoogleSignIn>(() => firebaseCoreModule.googleSignIn);
    gh.factory<_i9.SignInFormBloc>(
        () => _i9.SignInFormBloc(gh<_i6.InterfaceAuthFacade>()));
    gh.singleton<_i10.FirebaseAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i7.FirebaseAuth>(),
          gh<_i8.GoogleSignIn>(),
        ));
    return this;
  }
}

class _$FirebaseCoreModule extends _i11.FirebaseCoreModule {}
