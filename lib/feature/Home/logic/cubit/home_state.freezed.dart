// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoadingState,
    required TResult Function(DoctorModel doctorModel) homeSuccessState,
    required TResult Function(ApiErrorModel error) homeErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoadingState,
    TResult? Function(DoctorModel doctorModel)? homeSuccessState,
    TResult? Function(ApiErrorModel error)? homeErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoadingState,
    TResult Function(DoctorModel doctorModel)? homeSuccessState,
    TResult Function(ApiErrorModel error)? homeErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) homeLoadingState,
    required TResult Function(HomeSuccessState value) homeSuccessState,
    required TResult Function(HomeErrorState value) homeErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? homeLoadingState,
    TResult? Function(HomeSuccessState value)? homeSuccessState,
    TResult? Function(HomeErrorState value)? homeErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? homeLoadingState,
    TResult Function(HomeSuccessState value)? homeSuccessState,
    TResult Function(HomeErrorState value)? homeErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialStateImplCopyWith<$Res> {
  factory _$$HomeInitialStateImplCopyWith(_$HomeInitialStateImpl value,
          $Res Function(_$HomeInitialStateImpl) then) =
      __$$HomeInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialStateImpl>
    implements _$$HomeInitialStateImplCopyWith<$Res> {
  __$$HomeInitialStateImplCopyWithImpl(_$HomeInitialStateImpl _value,
      $Res Function(_$HomeInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialStateImpl implements _HomeInitialState {
  const _$HomeInitialStateImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoadingState,
    required TResult Function(DoctorModel doctorModel) homeSuccessState,
    required TResult Function(ApiErrorModel error) homeErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoadingState,
    TResult? Function(DoctorModel doctorModel)? homeSuccessState,
    TResult? Function(ApiErrorModel error)? homeErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoadingState,
    TResult Function(DoctorModel doctorModel)? homeSuccessState,
    TResult Function(ApiErrorModel error)? homeErrorState,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) homeLoadingState,
    required TResult Function(HomeSuccessState value) homeSuccessState,
    required TResult Function(HomeErrorState value) homeErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? homeLoadingState,
    TResult? Function(HomeSuccessState value)? homeSuccessState,
    TResult? Function(HomeErrorState value)? homeErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? homeLoadingState,
    TResult Function(HomeSuccessState value)? homeSuccessState,
    TResult Function(HomeErrorState value)? homeErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitialState implements HomeState {
  const factory _HomeInitialState() = _$HomeInitialStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadingStateImplCopyWith<$Res> {
  factory _$$HomeLoadingStateImplCopyWith(_$HomeLoadingStateImpl value,
          $Res Function(_$HomeLoadingStateImpl) then) =
      __$$HomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingStateImpl>
    implements _$$HomeLoadingStateImplCopyWith<$Res> {
  __$$HomeLoadingStateImplCopyWithImpl(_$HomeLoadingStateImpl _value,
      $Res Function(_$HomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingStateImpl implements HomeLoadingState {
  const _$HomeLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.homeLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoadingState,
    required TResult Function(DoctorModel doctorModel) homeSuccessState,
    required TResult Function(ApiErrorModel error) homeErrorState,
  }) {
    return homeLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoadingState,
    TResult? Function(DoctorModel doctorModel)? homeSuccessState,
    TResult? Function(ApiErrorModel error)? homeErrorState,
  }) {
    return homeLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoadingState,
    TResult Function(DoctorModel doctorModel)? homeSuccessState,
    TResult Function(ApiErrorModel error)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeLoadingState != null) {
      return homeLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) homeLoadingState,
    required TResult Function(HomeSuccessState value) homeSuccessState,
    required TResult Function(HomeErrorState value) homeErrorState,
  }) {
    return homeLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? homeLoadingState,
    TResult? Function(HomeSuccessState value)? homeSuccessState,
    TResult? Function(HomeErrorState value)? homeErrorState,
  }) {
    return homeLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? homeLoadingState,
    TResult Function(HomeSuccessState value)? homeSuccessState,
    TResult Function(HomeErrorState value)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeLoadingState != null) {
      return homeLoadingState(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeState {
  const factory HomeLoadingState() = _$HomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeSuccessStateImplCopyWith<$Res> {
  factory _$$HomeSuccessStateImplCopyWith(_$HomeSuccessStateImpl value,
          $Res Function(_$HomeSuccessStateImpl) then) =
      __$$HomeSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoctorModel doctorModel});
}

/// @nodoc
class __$$HomeSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeSuccessStateImpl>
    implements _$$HomeSuccessStateImplCopyWith<$Res> {
  __$$HomeSuccessStateImplCopyWithImpl(_$HomeSuccessStateImpl _value,
      $Res Function(_$HomeSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorModel = null,
  }) {
    return _then(_$HomeSuccessStateImpl(
      null == doctorModel
          ? _value.doctorModel
          : doctorModel // ignore: cast_nullable_to_non_nullable
              as DoctorModel,
    ));
  }
}

/// @nodoc

class _$HomeSuccessStateImpl implements HomeSuccessState {
  const _$HomeSuccessStateImpl(this.doctorModel);

  @override
  final DoctorModel doctorModel;

  @override
  String toString() {
    return 'HomeState.homeSuccessState(doctorModel: $doctorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessStateImpl &&
            (identical(other.doctorModel, doctorModel) ||
                other.doctorModel == doctorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessStateImplCopyWith<_$HomeSuccessStateImpl> get copyWith =>
      __$$HomeSuccessStateImplCopyWithImpl<_$HomeSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoadingState,
    required TResult Function(DoctorModel doctorModel) homeSuccessState,
    required TResult Function(ApiErrorModel error) homeErrorState,
  }) {
    return homeSuccessState(doctorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoadingState,
    TResult? Function(DoctorModel doctorModel)? homeSuccessState,
    TResult? Function(ApiErrorModel error)? homeErrorState,
  }) {
    return homeSuccessState?.call(doctorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoadingState,
    TResult Function(DoctorModel doctorModel)? homeSuccessState,
    TResult Function(ApiErrorModel error)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeSuccessState != null) {
      return homeSuccessState(doctorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) homeLoadingState,
    required TResult Function(HomeSuccessState value) homeSuccessState,
    required TResult Function(HomeErrorState value) homeErrorState,
  }) {
    return homeSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? homeLoadingState,
    TResult? Function(HomeSuccessState value)? homeSuccessState,
    TResult? Function(HomeErrorState value)? homeErrorState,
  }) {
    return homeSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? homeLoadingState,
    TResult Function(HomeSuccessState value)? homeSuccessState,
    TResult Function(HomeErrorState value)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeSuccessState != null) {
      return homeSuccessState(this);
    }
    return orElse();
  }
}

abstract class HomeSuccessState implements HomeState {
  const factory HomeSuccessState(final DoctorModel doctorModel) =
      _$HomeSuccessStateImpl;

  DoctorModel get doctorModel;
  @JsonKey(ignore: true)
  _$$HomeSuccessStateImplCopyWith<_$HomeSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorStateImplCopyWith<$Res> {
  factory _$$HomeErrorStateImplCopyWith(_$HomeErrorStateImpl value,
          $Res Function(_$HomeErrorStateImpl) then) =
      __$$HomeErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$HomeErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorStateImpl>
    implements _$$HomeErrorStateImplCopyWith<$Res> {
  __$$HomeErrorStateImplCopyWithImpl(
      _$HomeErrorStateImpl _value, $Res Function(_$HomeErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$HomeErrorStateImpl implements HomeErrorState {
  const _$HomeErrorStateImpl({required this.error});

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'HomeState.homeErrorState(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorStateImplCopyWith<_$HomeErrorStateImpl> get copyWith =>
      __$$HomeErrorStateImplCopyWithImpl<_$HomeErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoadingState,
    required TResult Function(DoctorModel doctorModel) homeSuccessState,
    required TResult Function(ApiErrorModel error) homeErrorState,
  }) {
    return homeErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoadingState,
    TResult? Function(DoctorModel doctorModel)? homeSuccessState,
    TResult? Function(ApiErrorModel error)? homeErrorState,
  }) {
    return homeErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoadingState,
    TResult Function(DoctorModel doctorModel)? homeSuccessState,
    TResult Function(ApiErrorModel error)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeErrorState != null) {
      return homeErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) homeLoadingState,
    required TResult Function(HomeSuccessState value) homeSuccessState,
    required TResult Function(HomeErrorState value) homeErrorState,
  }) {
    return homeErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? homeLoadingState,
    TResult? Function(HomeSuccessState value)? homeSuccessState,
    TResult? Function(HomeErrorState value)? homeErrorState,
  }) {
    return homeErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? homeLoadingState,
    TResult Function(HomeSuccessState value)? homeSuccessState,
    TResult Function(HomeErrorState value)? homeErrorState,
    required TResult orElse(),
  }) {
    if (homeErrorState != null) {
      return homeErrorState(this);
    }
    return orElse();
  }
}

abstract class HomeErrorState implements HomeState {
  const factory HomeErrorState({required final ApiErrorModel error}) =
      _$HomeErrorStateImpl;

  ApiErrorModel get error;
  @JsonKey(ignore: true)
  _$$HomeErrorStateImplCopyWith<_$HomeErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
