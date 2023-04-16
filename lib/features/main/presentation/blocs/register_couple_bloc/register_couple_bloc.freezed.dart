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
  bool get registered => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCoupleStateCopyWith<RegisterCoupleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCoupleStateCopyWith<$Res> {
  factory $RegisterCoupleStateCopyWith(
          RegisterCoupleState value, $Res Function(RegisterCoupleState) then) =
      _$RegisterCoupleStateCopyWithImpl<$Res, RegisterCoupleState>;
  @useResult
  $Res call({bool registered, bool isFailed, bool loading});
}

/// @nodoc
class _$RegisterCoupleStateCopyWithImpl<$Res, $Val extends RegisterCoupleState>
    implements $RegisterCoupleStateCopyWith<$Res> {
  _$RegisterCoupleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registered = null,
    Object? isFailed = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterCoupleStateCopyWith<$Res>
    implements $RegisterCoupleStateCopyWith<$Res> {
  factory _$$_RegisterCoupleStateCopyWith(_$_RegisterCoupleState value,
          $Res Function(_$_RegisterCoupleState) then) =
      __$$_RegisterCoupleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool registered, bool isFailed, bool loading});
}

/// @nodoc
class __$$_RegisterCoupleStateCopyWithImpl<$Res>
    extends _$RegisterCoupleStateCopyWithImpl<$Res, _$_RegisterCoupleState>
    implements _$$_RegisterCoupleStateCopyWith<$Res> {
  __$$_RegisterCoupleStateCopyWithImpl(_$_RegisterCoupleState _value,
      $Res Function(_$_RegisterCoupleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registered = null,
    Object? isFailed = null,
    Object? loading = null,
  }) {
    return _then(_$_RegisterCoupleState(
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterCoupleState extends _RegisterCoupleState {
  _$_RegisterCoupleState(
      {required this.registered, required this.isFailed, required this.loading})
      : super._();

  @override
  final bool registered;
  @override
  final bool isFailed;
  @override
  final bool loading;

  @override
  String toString() {
    return 'RegisterCoupleState(registered: $registered, isFailed: $isFailed, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterCoupleState &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registered, isFailed, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCoupleStateCopyWith<_$_RegisterCoupleState> get copyWith =>
      __$$_RegisterCoupleStateCopyWithImpl<_$_RegisterCoupleState>(
          this, _$identity);
}

abstract class _RegisterCoupleState extends RegisterCoupleState {
  factory _RegisterCoupleState(
      {required final bool registered,
      required final bool isFailed,
      required final bool loading}) = _$_RegisterCoupleState;
  _RegisterCoupleState._() : super._();

  @override
  bool get registered;
  @override
  bool get isFailed;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCoupleStateCopyWith<_$_RegisterCoupleState> get copyWith =>
      throw _privateConstructorUsedError;
}
