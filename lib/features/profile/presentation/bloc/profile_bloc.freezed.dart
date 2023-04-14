// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserData,
    required TResult Function() getIndividual,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserData,
    TResult? Function()? getIndividual,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserData,
    TResult Function()? getIndividual,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetIndividual value) getIndividual,
    required TResult Function(LogoutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetIndividual value)? getIndividual,
    TResult? Function(LogoutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetIndividual value)? getIndividual,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'ProfileEvent.started()';
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
    required TResult Function() getUserData,
    required TResult Function() getIndividual,
    required TResult Function() logOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserData,
    TResult? Function()? getIndividual,
    TResult? Function()? logOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserData,
    TResult Function()? getIndividual,
    TResult Function()? logOut,
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
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetIndividual value) getIndividual,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetIndividual value)? getIndividual,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetIndividual value)? getIndividual,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ProfileEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetUserDataCopyWith<$Res> {
  factory _$$GetUserDataCopyWith(
          _$GetUserData value, $Res Function(_$GetUserData) then) =
      __$$GetUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserData>
    implements _$$GetUserDataCopyWith<$Res> {
  __$$GetUserDataCopyWithImpl(
      _$GetUserData _value, $Res Function(_$GetUserData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserData implements GetUserData {
  const _$GetUserData();

  @override
  String toString() {
    return 'ProfileEvent.getUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserData,
    required TResult Function() getIndividual,
    required TResult Function() logOut,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserData,
    TResult? Function()? getIndividual,
    TResult? Function()? logOut,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserData,
    TResult Function()? getIndividual,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetIndividual value) getIndividual,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetIndividual value)? getIndividual,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetIndividual value)? getIndividual,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements ProfileEvent {
  const factory GetUserData() = _$GetUserData;
}

/// @nodoc
abstract class _$$GetIndividualCopyWith<$Res> {
  factory _$$GetIndividualCopyWith(
          _$GetIndividual value, $Res Function(_$GetIndividual) then) =
      __$$GetIndividualCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIndividualCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetIndividual>
    implements _$$GetIndividualCopyWith<$Res> {
  __$$GetIndividualCopyWithImpl(
      _$GetIndividual _value, $Res Function(_$GetIndividual) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIndividual implements GetIndividual {
  const _$GetIndividual();

  @override
  String toString() {
    return 'ProfileEvent.getIndividual()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIndividual);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserData,
    required TResult Function() getIndividual,
    required TResult Function() logOut,
  }) {
    return getIndividual();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserData,
    TResult? Function()? getIndividual,
    TResult? Function()? logOut,
  }) {
    return getIndividual?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserData,
    TResult Function()? getIndividual,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (getIndividual != null) {
      return getIndividual();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetIndividual value) getIndividual,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return getIndividual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetIndividual value)? getIndividual,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return getIndividual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetIndividual value)? getIndividual,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (getIndividual != null) {
      return getIndividual(this);
    }
    return orElse();
  }
}

abstract class GetIndividual implements ProfileEvent {
  const factory GetIndividual() = _$GetIndividual;
}

/// @nodoc
abstract class _$$LogoutEventCopyWith<$Res> {
  factory _$$LogoutEventCopyWith(
          _$LogoutEvent value, $Res Function(_$LogoutEvent) then) =
      __$$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogoutEvent>
    implements _$$LogoutEventCopyWith<$Res> {
  __$$LogoutEventCopyWithImpl(
      _$LogoutEvent _value, $Res Function(_$LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEvent implements LogoutEvent {
  const _$LogoutEvent();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserData,
    required TResult Function() getIndividual,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserData,
    TResult? Function()? getIndividual,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserData,
    TResult Function()? getIndividual,
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
    required TResult Function(Started value) started,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetIndividual value) getIndividual,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetIndividual value)? getIndividual,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetIndividual value)? getIndividual,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements ProfileEvent {
  const factory LogoutEvent() = _$LogoutEvent;
}

/// @nodoc
mixin _$ProfileState {
  IndividualEntity get profileData => throw _privateConstructorUsedError;
  UserDataEntity get userData => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {IndividualEntity profileData,
      UserDataEntity userData,
      bool loading,
      bool isFailed,
      String message});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? userData = null,
    Object? loading = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      profileData: null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as IndividualEntity,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserDataEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IndividualEntity profileData,
      UserDataEntity userData,
      bool loading,
      bool isFailed,
      String message});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? userData = null,
    Object? loading = null,
    Object? isFailed = null,
    Object? message = null,
  }) {
    return _then(_$_ProfileState(
      profileData: null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as IndividualEntity,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserDataEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
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

class _$_ProfileState extends _ProfileState {
  _$_ProfileState(
      {required this.profileData,
      required this.userData,
      required this.loading,
      required this.isFailed,
      required this.message})
      : super._();

  @override
  final IndividualEntity profileData;
  @override
  final UserDataEntity userData;
  @override
  final bool loading;
  @override
  final bool isFailed;
  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState(profileData: $profileData, userData: $userData, loading: $loading, isFailed: $isFailed, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, profileData, userData, loading, isFailed, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  factory _ProfileState(
      {required final IndividualEntity profileData,
      required final UserDataEntity userData,
      required final bool loading,
      required final bool isFailed,
      required final String message}) = _$_ProfileState;
  _ProfileState._() : super._();

  @override
  IndividualEntity get profileData;
  @override
  UserDataEntity get userData;
  @override
  bool get loading;
  @override
  bool get isFailed;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
