// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() citiesStarted,
    required TResult Function(CitiesRequestType params) citiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? citiesStarted,
    TResult? Function(CitiesRequestType params)? citiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? citiesStarted,
    TResult Function(CitiesRequestType params)? citiesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CitiesStarted value) citiesStarted,
    required TResult Function(CitiesFetched value) citiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CitiesStarted value)? citiesStarted,
    TResult? Function(CitiesFetched value)? citiesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CitiesStarted value)? citiesStarted,
    TResult Function(CitiesFetched value)? citiesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res, CitiesEvent>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res, $Val extends CitiesEvent>
    implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CitiesStartedCopyWith<$Res> {
  factory _$$CitiesStartedCopyWith(
          _$CitiesStarted value, $Res Function(_$CitiesStarted) then) =
      __$$CitiesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CitiesStartedCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$CitiesStarted>
    implements _$$CitiesStartedCopyWith<$Res> {
  __$$CitiesStartedCopyWithImpl(
      _$CitiesStarted _value, $Res Function(_$CitiesStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CitiesStarted implements CitiesStarted {
  const _$CitiesStarted();

  @override
  String toString() {
    return 'CitiesEvent.citiesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CitiesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() citiesStarted,
    required TResult Function(CitiesRequestType params) citiesFetched,
  }) {
    return citiesStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? citiesStarted,
    TResult? Function(CitiesRequestType params)? citiesFetched,
  }) {
    return citiesStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? citiesStarted,
    TResult Function(CitiesRequestType params)? citiesFetched,
    required TResult orElse(),
  }) {
    if (citiesStarted != null) {
      return citiesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CitiesStarted value) citiesStarted,
    required TResult Function(CitiesFetched value) citiesFetched,
  }) {
    return citiesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CitiesStarted value)? citiesStarted,
    TResult? Function(CitiesFetched value)? citiesFetched,
  }) {
    return citiesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CitiesStarted value)? citiesStarted,
    TResult Function(CitiesFetched value)? citiesFetched,
    required TResult orElse(),
  }) {
    if (citiesStarted != null) {
      return citiesStarted(this);
    }
    return orElse();
  }
}

abstract class CitiesStarted implements CitiesEvent {
  const factory CitiesStarted() = _$CitiesStarted;
}

/// @nodoc
abstract class _$$CitiesFetchedCopyWith<$Res> {
  factory _$$CitiesFetchedCopyWith(
          _$CitiesFetched value, $Res Function(_$CitiesFetched) then) =
      __$$CitiesFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({CitiesRequestType params});
}

/// @nodoc
class __$$CitiesFetchedCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$CitiesFetched>
    implements _$$CitiesFetchedCopyWith<$Res> {
  __$$CitiesFetchedCopyWithImpl(
      _$CitiesFetched _value, $Res Function(_$CitiesFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CitiesFetched(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CitiesRequestType,
    ));
  }
}

/// @nodoc

class _$CitiesFetched implements CitiesFetched {
  const _$CitiesFetched(this.params);

  @override
  final CitiesRequestType params;

  @override
  String toString() {
    return 'CitiesEvent.citiesFetched(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesFetched &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesFetchedCopyWith<_$CitiesFetched> get copyWith =>
      __$$CitiesFetchedCopyWithImpl<_$CitiesFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() citiesStarted,
    required TResult Function(CitiesRequestType params) citiesFetched,
  }) {
    return citiesFetched(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? citiesStarted,
    TResult? Function(CitiesRequestType params)? citiesFetched,
  }) {
    return citiesFetched?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? citiesStarted,
    TResult Function(CitiesRequestType params)? citiesFetched,
    required TResult orElse(),
  }) {
    if (citiesFetched != null) {
      return citiesFetched(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CitiesStarted value) citiesStarted,
    required TResult Function(CitiesFetched value) citiesFetched,
  }) {
    return citiesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CitiesStarted value)? citiesStarted,
    TResult? Function(CitiesFetched value)? citiesFetched,
  }) {
    return citiesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CitiesStarted value)? citiesStarted,
    TResult Function(CitiesFetched value)? citiesFetched,
    required TResult orElse(),
  }) {
    if (citiesFetched != null) {
      return citiesFetched(this);
    }
    return orElse();
  }
}

abstract class CitiesFetched implements CitiesEvent {
  const factory CitiesFetched(final CitiesRequestType params) = _$CitiesFetched;

  CitiesRequestType get params;
  @JsonKey(ignore: true)
  _$$CitiesFetchedCopyWith<_$CitiesFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CitiesState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<String> get cityList => throw _privateConstructorUsedError;
  List<List<String>> get officeList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitiesStateCopyWith<CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res, CitiesState>;
  @useResult
  $Res call(
      {bool loading,
      bool loaded,
      bool isFailed,
      String message,
      List<String> cityList,
      List<List<String>> officeList});
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res, $Val extends CitiesState>
    implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
    Object? cityList = null,
    Object? officeList = null,
  }) {
    return _then(_value.copyWith(
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
      cityList: null == cityList
          ? _value.cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      officeList: null == officeList
          ? _value.officeList
          : officeList // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CitiesStateCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$_CitiesStateCopyWith(
          _$_CitiesState value, $Res Function(_$_CitiesState) then) =
      __$$_CitiesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool loaded,
      bool isFailed,
      String message,
      List<String> cityList,
      List<List<String>> officeList});
}

/// @nodoc
class __$$_CitiesStateCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesState>
    implements _$$_CitiesStateCopyWith<$Res> {
  __$$_CitiesStateCopyWithImpl(
      _$_CitiesState _value, $Res Function(_$_CitiesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? isFailed = null,
    Object? message = null,
    Object? cityList = null,
    Object? officeList = null,
  }) {
    return _then(_$_CitiesState(
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
      cityList: null == cityList
          ? _value._cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      officeList: null == officeList
          ? _value._officeList
          : officeList // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_CitiesState extends _CitiesState {
  _$_CitiesState(
      {required this.loading,
      required this.loaded,
      required this.isFailed,
      required this.message,
      required final List<String> cityList,
      required final List<List<String>> officeList})
      : _cityList = cityList,
        _officeList = officeList,
        super._();

  @override
  final bool loading;
  @override
  final bool loaded;
  @override
  final bool isFailed;
  @override
  final String message;
  final List<String> _cityList;
  @override
  List<String> get cityList {
    if (_cityList is EqualUnmodifiableListView) return _cityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityList);
  }

  final List<List<String>> _officeList;
  @override
  List<List<String>> get officeList {
    if (_officeList is EqualUnmodifiableListView) return _officeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_officeList);
  }

  @override
  String toString() {
    return 'CitiesState(loading: $loading, loaded: $loaded, isFailed: $isFailed, message: $message, cityList: $cityList, officeList: $officeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._cityList, _cityList) &&
            const DeepCollectionEquality()
                .equals(other._officeList, _officeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      loaded,
      isFailed,
      message,
      const DeepCollectionEquality().hash(_cityList),
      const DeepCollectionEquality().hash(_officeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesStateCopyWith<_$_CitiesState> get copyWith =>
      __$$_CitiesStateCopyWithImpl<_$_CitiesState>(this, _$identity);
}

abstract class _CitiesState extends CitiesState {
  factory _CitiesState(
      {required final bool loading,
      required final bool loaded,
      required final bool isFailed,
      required final String message,
      required final List<String> cityList,
      required final List<List<String>> officeList}) = _$_CitiesState;
  _CitiesState._() : super._();

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  bool get isFailed;
  @override
  String get message;
  @override
  List<String> get cityList;
  @override
  List<List<String>> get officeList;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesStateCopyWith<_$_CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
