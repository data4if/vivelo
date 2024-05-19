// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailString});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailString = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailString
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailString, emailString) ||
                other.emailString == emailString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return emailChanged?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(final String emailString) = _$EmailChangedImpl;

  String get emailString;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordString});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordString = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passwordString
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordString, passwordString) ||
                other.passwordString == passwordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return passwordChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(final String passwordString) =
      _$PasswordChangedImpl;

  String get passwordString;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedImplCopyWith(
          _$RegisterWithEmailAndPasswordPressedImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) then) =
      __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressedImpl>
    implements _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressedImpl
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressedImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordPressedImplCopyWith(
          _$SignInWithEmailAndPasswordPressedImpl value,
          $Res Function(_$SignInWithEmailAndPasswordPressedImpl) then) =
      __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$SignInWithEmailAndPasswordPressedImpl>
    implements _$$SignInWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl(
      _$SignInWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressedImpl
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressedImpl;
}

/// @nodoc
abstract class _$$SignInWithGooglePressedImplCopyWith<$Res> {
  factory _$$SignInWithGooglePressedImplCopyWith(
          _$SignInWithGooglePressedImpl value,
          $Res Function(_$SignInWithGooglePressedImpl) then) =
      __$$SignInWithGooglePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGooglePressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithGooglePressedImpl>
    implements _$$SignInWithGooglePressedImplCopyWith<$Res> {
  __$$SignInWithGooglePressedImplCopyWithImpl(
      _$SignInWithGooglePressedImpl _value,
      $Res Function(_$SignInWithGooglePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGooglePressedImpl implements SignInWithGooglePressed {
  const _$SignInWithGooglePressedImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGooglePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressedImpl;
}

/// @nodoc
abstract class _$$SignInWithFacebookPressedImplCopyWith<$Res> {
  factory _$$SignInWithFacebookPressedImplCopyWith(
          _$SignInWithFacebookPressedImpl value,
          $Res Function(_$SignInWithFacebookPressedImpl) then) =
      __$$SignInWithFacebookPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithFacebookPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithFacebookPressedImpl>
    implements _$$SignInWithFacebookPressedImplCopyWith<$Res> {
  __$$SignInWithFacebookPressedImplCopyWithImpl(
      _$SignInWithFacebookPressedImpl _value,
      $Res Function(_$SignInWithFacebookPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithFacebookPressedImpl implements SignInWithFacebookPressed {
  const _$SignInWithFacebookPressedImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWhitFacebookPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithFacebookPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return signInWhitFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return signInWhitFacebookPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWhitFacebookPressed != null) {
      return signInWhitFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return signInWhitFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return signInWhitFacebookPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWhitFacebookPressed != null) {
      return signInWhitFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebookPressed implements SignInFormEvent {
  const factory SignInWithFacebookPressed() = _$SignInWithFacebookPressedImpl;
}

/// @nodoc
abstract class _$$signInWhitAppleIdPressedImplCopyWith<$Res> {
  factory _$$signInWhitAppleIdPressedImplCopyWith(
          _$signInWhitAppleIdPressedImpl value,
          $Res Function(_$signInWhitAppleIdPressedImpl) then) =
      __$$signInWhitAppleIdPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signInWhitAppleIdPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$signInWhitAppleIdPressedImpl>
    implements _$$signInWhitAppleIdPressedImplCopyWith<$Res> {
  __$$signInWhitAppleIdPressedImplCopyWithImpl(
      _$signInWhitAppleIdPressedImpl _value,
      $Res Function(_$signInWhitAppleIdPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$signInWhitAppleIdPressedImpl implements signInWhitAppleIdPressed {
  const _$signInWhitAppleIdPressedImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWhitAppleIdPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signInWhitAppleIdPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWhitFacebookPressed,
    required TResult Function() signInWhitAppleIdPressed,
  }) {
    return signInWhitAppleIdPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailString)? emailChanged,
    TResult? Function(String passwordString)? passwordChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWhitFacebookPressed,
    TResult? Function()? signInWhitAppleIdPressed,
  }) {
    return signInWhitAppleIdPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWhitFacebookPressed,
    TResult Function()? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWhitAppleIdPressed != null) {
      return signInWhitAppleIdPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWhitFacebookPressed,
    required TResult Function(signInWhitAppleIdPressed value)
        signInWhitAppleIdPressed,
  }) {
    return signInWhitAppleIdPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult? Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
  }) {
    return signInWhitAppleIdPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWhitFacebookPressed,
    TResult Function(signInWhitAppleIdPressed value)? signInWhitAppleIdPressed,
    required TResult orElse(),
  }) {
    if (signInWhitAppleIdPressed != null) {
      return signInWhitAppleIdPressed(this);
    }
    return orElse();
  }
}

abstract class signInWhitAppleIdPressed implements SignInFormEvent {
  const factory signInWhitAppleIdPressed() = _$signInWhitAppleIdPressedImpl;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$SignInFormStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl implements _SignInFormState {
  const _$SignInFormStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$SignInFormStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
