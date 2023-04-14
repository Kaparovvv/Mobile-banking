// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_couple_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterCoupleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterCoupleParams params) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterCoupleParams params)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterCoupleParams params)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCoupleEventCopyWith<$Res> {
  factory $RegisterCoupleEventCopyWith(
          RegisterCoupleEvent value, $Res Function(RegisterCoupleEvent) then) =
      _$RegisterCoupleEventCopyWithImpl<$Res, RegisterCoupleEvent>;
}

/// @nodoc
class _$RegisterCoupleEventCopyWithImpl<$Res, $Val extends RegisterCoupleEvent>
    implements $RegisterCoupleEventCopyWith<$Res> {
  _$RegisterCoupleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$RegisterCoupleEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'RegisterCoupleEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterCoupleParams params) register,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterCoupleParams params)? register,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterCoupleParams params)? register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Register value) register,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Register value)? register,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements RegisterCoupleEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$RegisterCopyWith<$Res> {
  factory _$$RegisterCopyWith(
          _$Register value, $Res Function(_$Register) then) =
      __$$RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterCoupleParams params});
}

/// @nodoc
class __$$RegisterCopyWithImpl<$Res>
    extends _$RegisterCoupleEventCopyWithImpl<$Res, _$Register>
    implements _$$RegisterCopyWith<$Res> {
  __$$RegisterCopyWithImpl(_$Register _value, $Res Function(_$Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$Register(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RegisterCoupleParams,
    ));
  }
}

/// @nodoc

class _$Register implements Register {
  const _$Register(this.params);

  @override
  final RegisterCoupleParams params;

  @override
  String toString() {
    return 'RegisterCoupleEvent.register(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Register &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCopyWith<_$Register> get copyWith =>
      __$$RegisterCopyWithImpl<_$Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterCoupleParams params) register,
  }) {
    return register(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterCoupleParams params)? register,
  }) {
    return register?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterCoupleParams params)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements RegisterCoupleEvent {
  const factory Register(final RegisterCoupleParams params) = _$Register;

  RegisterCoupleParams get params;
  @JsonKey(ignore: true)
  _$$RegisterCopyWith<_$Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterCoupleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registered,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registered,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registered,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Registered value) registered,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Registered value)? registered,
    TResult? Function(Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Registered value)? registered,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCoupleStateCopyWith<$Res> {
  factory $RegisterCoupleStateCopyWith(
          RegisterCoupleState value, $Res Function(RegisterCoupleState) then) =
      _$RegisterCoupleStateCopyWithImpl<$Res, RegisterCoupleState>;
}

/// @nodoc
class _$RegisterCoupleStateCopyWithImpl<$Res, $Val extends RegisterCoupleState>
    implements $RegisterCoupleStateCopyWith<$Res> {
  _$RegisterCoupleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RegisterCoupleStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RegisterCoupleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registered,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registered,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registered,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Registered value) registered,
    required TResult Function(Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Registered value)? registered,
    TResult? Function(Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Registered value)? registered,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RegisterCoupleState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$RegisteredCopyWith<$Res> {
  factory _$$RegisteredCopyWith(
          _$Registered value, $Res Function(_$Registered) then) =
      __$$RegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteredCopyWithImpl<$Res>
    extends _$RegisterCoupleStateCopyWithImpl<$Res, _$Registered>
    implements _$$RegisteredCopyWith<$Res> {
  __$$RegisteredCopyWithImpl(
      _$Registered _value, $Res Function(_$Registered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Registered implements Registered {
  const _$Registered();

  @override
  String toString() {
    return 'RegisterCoupleState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Registered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registered,
    required TResult Function() failed,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registered,
    TResult? Function()? failed,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registered,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Registered value) registered,
    required TResult Function(Failed value) failed,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Registered value)? registered,
    TResult? Function(Failed value)? failed,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Registered value)? registered,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered implements RegisterCoupleState {
  const factory Registered() = _$Registered;
}

/// @nodoc
abstract class _$$FailedCopyWith<$Res> {
  factory _$$FailedCopyWith(_$Failed value, $Res Function(_$Failed) then) =
      __$$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedCopyWithImpl<$Res>
    extends _$RegisterCoupleStateCopyWithImpl<$Res, _$Failed>
    implements _$$FailedCopyWith<$Res> {
  __$$FailedCopyWithImpl(_$Failed _value, $Res Function(_$Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed();

  @override
  String toString() {
    return 'RegisterCoupleState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registered,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registered,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registered,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Registered value) registered,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Registered value)? registered,
    TResult? Function(Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Registered value)? registered,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements RegisterCoupleState {
  const factory Failed() = _$Failed;
}
