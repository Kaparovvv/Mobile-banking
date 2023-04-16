// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CertificateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() babyCertificateFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? babyCertificateFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? babyCertificateFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CertificateFetched value) babyCertificateFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(CertificateFetched value)? babyCertificateFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CertificateFetched value)? babyCertificateFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateEventCopyWith<$Res> {
  factory $CertificateEventCopyWith(
          CertificateEvent value, $Res Function(CertificateEvent) then) =
      _$CertificateEventCopyWithImpl<$Res, CertificateEvent>;
}

/// @nodoc
class _$CertificateEventCopyWithImpl<$Res, $Val extends CertificateEvent>
    implements $CertificateEventCopyWith<$Res> {
  _$CertificateEventCopyWithImpl(this._value, this._then);

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
    extends _$CertificateEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'CertificateEvent.started()';
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
    required TResult Function() babyCertificateFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? babyCertificateFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? babyCertificateFetched,
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
    required TResult Function(CertificateFetched value) babyCertificateFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(CertificateFetched value)? babyCertificateFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CertificateFetched value)? babyCertificateFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements CertificateEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$CertificateFetchedCopyWith<$Res> {
  factory _$$CertificateFetchedCopyWith(_$CertificateFetched value,
          $Res Function(_$CertificateFetched) then) =
      __$$CertificateFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CertificateFetchedCopyWithImpl<$Res>
    extends _$CertificateEventCopyWithImpl<$Res, _$CertificateFetched>
    implements _$$CertificateFetchedCopyWith<$Res> {
  __$$CertificateFetchedCopyWithImpl(
      _$CertificateFetched _value, $Res Function(_$CertificateFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CertificateFetched implements CertificateFetched {
  const _$CertificateFetched();

  @override
  String toString() {
    return 'CertificateEvent.babyCertificateFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CertificateFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() babyCertificateFetched,
  }) {
    return babyCertificateFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? babyCertificateFetched,
  }) {
    return babyCertificateFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? babyCertificateFetched,
    required TResult orElse(),
  }) {
    if (babyCertificateFetched != null) {
      return babyCertificateFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CertificateFetched value) babyCertificateFetched,
  }) {
    return babyCertificateFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(CertificateFetched value)? babyCertificateFetched,
  }) {
    return babyCertificateFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CertificateFetched value)? babyCertificateFetched,
    required TResult orElse(),
  }) {
    if (babyCertificateFetched != null) {
      return babyCertificateFetched(this);
    }
    return orElse();
  }
}

abstract class CertificateFetched implements CertificateEvent {
  const factory CertificateFetched() = _$CertificateFetched;
}

/// @nodoc
mixin _$CertificateState {
  BabyBirthCertificateEntity get certificate =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CertificateStateCopyWith<CertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateStateCopyWith<$Res> {
  factory $CertificateStateCopyWith(
          CertificateState value, $Res Function(CertificateState) then) =
      _$CertificateStateCopyWithImpl<$Res, CertificateState>;
  @useResult
  $Res call(
      {BabyBirthCertificateEntity certificate,
      bool loading,
      bool loaded,
      bool isFailed,
      String message});
}

/// @nodoc
class _$CertificateStateCopyWithImpl<$Res, $Val extends CertificateState>
    implements $CertificateStateCopyWith<$Res> {
  _$CertificateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificate = null,
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      certificate: null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as BabyBirthCertificateEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CertificateStateCopyWith<$Res>
    implements $CertificateStateCopyWith<$Res> {
  factory _$$_CertificateStateCopyWith(
          _$_CertificateState value, $Res Function(_$_CertificateState) then) =
      __$$_CertificateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BabyBirthCertificateEntity certificate,
      bool loading,
      bool loaded,
      bool isFailed,
      String message});
}

/// @nodoc
class __$$_CertificateStateCopyWithImpl<$Res>
    extends _$CertificateStateCopyWithImpl<$Res, _$_CertificateState>
    implements _$$_CertificateStateCopyWith<$Res> {
  __$$_CertificateStateCopyWithImpl(
      _$_CertificateState _value, $Res Function(_$_CertificateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificate = null,
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_$_CertificateState(
      certificate: null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as BabyBirthCertificateEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CertificateState extends _CertificateState {
  _$_CertificateState(
      {required this.certificate,
      required this.loading,
      required this.loaded,
      required this.isFailed,
      required this.message})
      : super._();

  @override
  final BabyBirthCertificateEntity certificate;
  @override
  final bool loading;
  @override
  final bool loaded;
  @override
  final bool isFailed;
  @override
  final String message;

  @override
  String toString() {
    return 'CertificateState(certificate: $certificate, loading: $loading, loaded: $loaded, isFailed: $isFailed, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CertificateState &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, certificate, loading, loaded, isFailed, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CertificateStateCopyWith<_$_CertificateState> get copyWith =>
      __$$_CertificateStateCopyWithImpl<_$_CertificateState>(this, _$identity);
}

abstract class _CertificateState extends CertificateState {
  factory _CertificateState(
      {required final BabyBirthCertificateEntity certificate,
      required final bool loading,
      required final bool loaded,
      required final bool isFailed,
      required final String message}) = _$_CertificateState;
  _CertificateState._() : super._();

  @override
  BabyBirthCertificateEntity get certificate;
  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  bool get isFailed;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateStateCopyWith<_$_CertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}
