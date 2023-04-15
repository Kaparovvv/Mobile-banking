// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPassport,
    required TResult Function() getDriverLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPassport,
    TResult? Function()? getDriverLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPassport,
    TResult Function()? getDriverLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetPasportEvent value) getPassport,
    required TResult Function(GetDriverLicenseEvent value) getDriverLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetPasportEvent value)? getPassport,
    TResult? Function(GetDriverLicenseEvent value)? getDriverLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetPasportEvent value)? getPassport,
    TResult Function(GetDriverLicenseEvent value)? getDriverLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsEventCopyWith<$Res> {
  factory $DocumentsEventCopyWith(
          DocumentsEvent value, $Res Function(DocumentsEvent) then) =
      _$DocumentsEventCopyWithImpl<$Res, DocumentsEvent>;
}

/// @nodoc
class _$DocumentsEventCopyWithImpl<$Res, $Val extends DocumentsEvent>
    implements $DocumentsEventCopyWith<$Res> {
  _$DocumentsEventCopyWithImpl(this._value, this._then);

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
    extends _$DocumentsEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'DocumentsEvent.started()';
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
    required TResult Function() getPassport,
    required TResult Function() getDriverLicense,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPassport,
    TResult? Function()? getDriverLicense,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPassport,
    TResult Function()? getDriverLicense,
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
    required TResult Function(GetPasportEvent value) getPassport,
    required TResult Function(GetDriverLicenseEvent value) getDriverLicense,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetPasportEvent value)? getPassport,
    TResult? Function(GetDriverLicenseEvent value)? getDriverLicense,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetPasportEvent value)? getPassport,
    TResult Function(GetDriverLicenseEvent value)? getDriverLicense,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements DocumentsEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetPasportEventCopyWith<$Res> {
  factory _$$GetPasportEventCopyWith(
          _$GetPasportEvent value, $Res Function(_$GetPasportEvent) then) =
      __$$GetPasportEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPasportEventCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$GetPasportEvent>
    implements _$$GetPasportEventCopyWith<$Res> {
  __$$GetPasportEventCopyWithImpl(
      _$GetPasportEvent _value, $Res Function(_$GetPasportEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPasportEvent implements GetPasportEvent {
  const _$GetPasportEvent();

  @override
  String toString() {
    return 'DocumentsEvent.getPassport()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPasportEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPassport,
    required TResult Function() getDriverLicense,
  }) {
    return getPassport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPassport,
    TResult? Function()? getDriverLicense,
  }) {
    return getPassport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPassport,
    TResult Function()? getDriverLicense,
    required TResult orElse(),
  }) {
    if (getPassport != null) {
      return getPassport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetPasportEvent value) getPassport,
    required TResult Function(GetDriverLicenseEvent value) getDriverLicense,
  }) {
    return getPassport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetPasportEvent value)? getPassport,
    TResult? Function(GetDriverLicenseEvent value)? getDriverLicense,
  }) {
    return getPassport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetPasportEvent value)? getPassport,
    TResult Function(GetDriverLicenseEvent value)? getDriverLicense,
    required TResult orElse(),
  }) {
    if (getPassport != null) {
      return getPassport(this);
    }
    return orElse();
  }
}

abstract class GetPasportEvent implements DocumentsEvent {
  const factory GetPasportEvent() = _$GetPasportEvent;
}

/// @nodoc
abstract class _$$GetDriverLicenseEventCopyWith<$Res> {
  factory _$$GetDriverLicenseEventCopyWith(_$GetDriverLicenseEvent value,
          $Res Function(_$GetDriverLicenseEvent) then) =
      __$$GetDriverLicenseEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDriverLicenseEventCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$GetDriverLicenseEvent>
    implements _$$GetDriverLicenseEventCopyWith<$Res> {
  __$$GetDriverLicenseEventCopyWithImpl(_$GetDriverLicenseEvent _value,
      $Res Function(_$GetDriverLicenseEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDriverLicenseEvent implements GetDriverLicenseEvent {
  const _$GetDriverLicenseEvent();

  @override
  String toString() {
    return 'DocumentsEvent.getDriverLicense()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDriverLicenseEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPassport,
    required TResult Function() getDriverLicense,
  }) {
    return getDriverLicense();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPassport,
    TResult? Function()? getDriverLicense,
  }) {
    return getDriverLicense?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPassport,
    TResult Function()? getDriverLicense,
    required TResult orElse(),
  }) {
    if (getDriverLicense != null) {
      return getDriverLicense();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetPasportEvent value) getPassport,
    required TResult Function(GetDriverLicenseEvent value) getDriverLicense,
  }) {
    return getDriverLicense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetPasportEvent value)? getPassport,
    TResult? Function(GetDriverLicenseEvent value)? getDriverLicense,
  }) {
    return getDriverLicense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetPasportEvent value)? getPassport,
    TResult Function(GetDriverLicenseEvent value)? getDriverLicense,
    required TResult orElse(),
  }) {
    if (getDriverLicense != null) {
      return getDriverLicense(this);
    }
    return orElse();
  }
}

abstract class GetDriverLicenseEvent implements DocumentsEvent {
  const factory GetDriverLicenseEvent() = _$GetDriverLicenseEvent;
}

/// @nodoc
mixin _$DocumentsState {
  DocumentEntity get passport => throw _privateConstructorUsedError;
  bool get isPassport => throw _privateConstructorUsedError;
  bool get isDriverLicense => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentsStateCopyWith<DocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
          DocumentsState value, $Res Function(DocumentsState) then) =
      _$DocumentsStateCopyWithImpl<$Res, DocumentsState>;
  @useResult
  $Res call(
      {DocumentEntity passport,
      bool isPassport,
      bool isDriverLicense,
      bool loading,
      bool loaded,
      bool isFailed,
      String message});
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res, $Val extends DocumentsState>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passport = null,
    Object? isPassport = null,
    Object? isDriverLicense = null,
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as DocumentEntity,
      isPassport: null == isPassport
          ? _value.isPassport
          : isPassport // ignore: cast_nullable_to_non_nullable
              as bool,
      isDriverLicense: null == isDriverLicense
          ? _value.isDriverLicense
          : isDriverLicense // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_DocumentsStateCopyWith<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  factory _$$_DocumentsStateCopyWith(
          _$_DocumentsState value, $Res Function(_$_DocumentsState) then) =
      __$$_DocumentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentEntity passport,
      bool isPassport,
      bool isDriverLicense,
      bool loading,
      bool loaded,
      bool isFailed,
      String message});
}

/// @nodoc
class __$$_DocumentsStateCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$_DocumentsState>
    implements _$$_DocumentsStateCopyWith<$Res> {
  __$$_DocumentsStateCopyWithImpl(
      _$_DocumentsState _value, $Res Function(_$_DocumentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passport = null,
    Object? isPassport = null,
    Object? isDriverLicense = null,
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_$_DocumentsState(
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as DocumentEntity,
      isPassport: null == isPassport
          ? _value.isPassport
          : isPassport // ignore: cast_nullable_to_non_nullable
              as bool,
      isDriverLicense: null == isDriverLicense
          ? _value.isDriverLicense
          : isDriverLicense // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_DocumentsState extends _DocumentsState {
  _$_DocumentsState(
      {required this.passport,
      required this.isPassport,
      required this.isDriverLicense,
      required this.loading,
      required this.loaded,
      required this.isFailed,
      required this.message})
      : super._();

  @override
  final DocumentEntity passport;
  @override
  final bool isPassport;
  @override
  final bool isDriverLicense;
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
    return 'DocumentsState(passport: $passport, isPassport: $isPassport, isDriverLicense: $isDriverLicense, loading: $loading, loaded: $loaded, isFailed: $isFailed, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentsState &&
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.isPassport, isPassport) ||
                other.isPassport == isPassport) &&
            (identical(other.isDriverLicense, isDriverLicense) ||
                other.isDriverLicense == isDriverLicense) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passport, isPassport,
      isDriverLicense, loading, loaded, isFailed, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentsStateCopyWith<_$_DocumentsState> get copyWith =>
      __$$_DocumentsStateCopyWithImpl<_$_DocumentsState>(this, _$identity);
}

abstract class _DocumentsState extends DocumentsState {
  factory _DocumentsState(
      {required final DocumentEntity passport,
      required final bool isPassport,
      required final bool isDriverLicense,
      required final bool loading,
      required final bool loaded,
      required final bool isFailed,
      required final String message}) = _$_DocumentsState;
  _DocumentsState._() : super._();

  @override
  DocumentEntity get passport;
  @override
  bool get isPassport;
  @override
  bool get isDriverLicense;
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
  _$$_DocumentsStateCopyWith<_$_DocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
