// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? logIn,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInCopyWith<$Res> {
  factory _$$LogInCopyWith(_$LogIn value, $Res Function(_$LogIn) then) =
      __$$LogInCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class __$$LogInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$LogIn>
    implements _$$LogInCopyWith<$Res> {
  __$$LogInCopyWithImpl(_$LogIn _value, $Res Function(_$LogIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$LogIn(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogIn implements LogIn {
  const _$LogIn({required this.phoneNumber, required this.password});

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogIn &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInCopyWith<_$LogIn> get copyWith =>
      __$$LogInCopyWithImpl<_$LogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogIn implements AuthEvent {
  const factory LogIn(
      {required final String phoneNumber,
      required final String password}) = _$LogIn;

  String get phoneNumber;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInCopyWith<_$LogIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutCopyWith<$Res> {
  factory _$$LogOutCopyWith(_$LogOut value, $Res Function(_$LogOut) then) =
      __$$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOut>
    implements _$$LogOutCopyWith<$Res> {
  __$$LogOutCopyWithImpl(_$LogOut _value, $Res Function(_$LogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOut implements LogOut {
  const _$LogOut();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOut;
}

/// @nodoc
mixin _$AuthState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get authenticated => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool loading, bool isFailed, bool authenticated, String message});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isFailed = null,
    Object? authenticated = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool isFailed, bool authenticated, String message});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isFailed = null,
    Object? authenticated = null,
    Object? message = null,
  }) {
    return _then(_$_AuthState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  _$_AuthState(
      {required this.loading,
      required this.isFailed,
      required this.authenticated,
      required this.message})
      : super._();

  @override
  final bool loading;
  @override
  final bool isFailed;
  @override
  final bool authenticated;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState(loading: $loading, isFailed: $isFailed, authenticated: $authenticated, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, isFailed, authenticated, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  factory _AuthState(
      {required final bool loading,
      required final bool isFailed,
      required final bool authenticated,
      required final String message}) = _$_AuthState;
  _AuthState._() : super._();

  @override
  bool get loading;
  @override
  bool get isFailed;
  @override
  bool get authenticated;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
