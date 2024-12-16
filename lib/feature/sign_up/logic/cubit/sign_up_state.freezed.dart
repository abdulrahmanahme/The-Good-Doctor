// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponseModel data) success,
    required TResult Function(ApiErrorModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponseModel data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponseModel data)? success,
    TResult Function(ApiErrorModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignUp value) initial,
    required TResult Function(LoadingSignUp value) loading,
    required TResult Function(SuccessSignUp value) success,
    required TResult Function(ErrorSignUp value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp value)? initial,
    TResult? Function(LoadingSignUp value)? loading,
    TResult? Function(SuccessSignUp value)? success,
    TResult? Function(ErrorSignUp value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp value)? initial,
    TResult Function(LoadingSignUp value)? loading,
    TResult Function(SuccessSignUp value)? success,
    TResult Function(ErrorSignUp value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignUpImplCopyWith<$Res> {
  factory _$$InitialSignUpImplCopyWith(
          _$InitialSignUpImpl value, $Res Function(_$InitialSignUpImpl) then) =
      __$$InitialSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSignUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialSignUpImpl>
    implements _$$InitialSignUpImplCopyWith<$Res> {
  __$$InitialSignUpImplCopyWithImpl(
      _$InitialSignUpImpl _value, $Res Function(_$InitialSignUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignUpImpl implements _InitialSignUp {
  const _$InitialSignUpImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponseModel data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponseModel data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponseModel data)? success,
    TResult Function(ApiErrorModel error)? error,
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
    required TResult Function(_InitialSignUp value) initial,
    required TResult Function(LoadingSignUp value) loading,
    required TResult Function(SuccessSignUp value) success,
    required TResult Function(ErrorSignUp value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp value)? initial,
    TResult? Function(LoadingSignUp value)? loading,
    TResult? Function(SuccessSignUp value)? success,
    TResult? Function(ErrorSignUp value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp value)? initial,
    TResult Function(LoadingSignUp value)? loading,
    TResult Function(SuccessSignUp value)? success,
    TResult Function(ErrorSignUp value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSignUp implements SignUpState {
  const factory _InitialSignUp() = _$InitialSignUpImpl;
}

/// @nodoc
abstract class _$$LoadingSignUpImplCopyWith<$Res> {
  factory _$$LoadingSignUpImplCopyWith(
          _$LoadingSignUpImpl value, $Res Function(_$LoadingSignUpImpl) then) =
      __$$LoadingSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSignUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$LoadingSignUpImpl>
    implements _$$LoadingSignUpImplCopyWith<$Res> {
  __$$LoadingSignUpImplCopyWithImpl(
      _$LoadingSignUpImpl _value, $Res Function(_$LoadingSignUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSignUpImpl implements LoadingSignUp {
  const _$LoadingSignUpImpl();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponseModel data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponseModel data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponseModel data)? success,
    TResult Function(ApiErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignUp value) initial,
    required TResult Function(LoadingSignUp value) loading,
    required TResult Function(SuccessSignUp value) success,
    required TResult Function(ErrorSignUp value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp value)? initial,
    TResult? Function(LoadingSignUp value)? loading,
    TResult? Function(SuccessSignUp value)? success,
    TResult? Function(ErrorSignUp value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp value)? initial,
    TResult Function(LoadingSignUp value)? loading,
    TResult Function(SuccessSignUp value)? success,
    TResult Function(ErrorSignUp value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSignUp implements SignUpState {
  const factory LoadingSignUp() = _$LoadingSignUpImpl;
}

/// @nodoc
abstract class _$$SuccessSignUpImplCopyWith<$Res> {
  factory _$$SuccessSignUpImplCopyWith(
          _$SuccessSignUpImpl value, $Res Function(_$SuccessSignUpImpl) then) =
      __$$SuccessSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpResponseModel data});
}

/// @nodoc
class __$$SuccessSignUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SuccessSignUpImpl>
    implements _$$SuccessSignUpImplCopyWith<$Res> {
  __$$SuccessSignUpImplCopyWithImpl(
      _$SuccessSignUpImpl _value, $Res Function(_$SuccessSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessSignUpImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessSignUpImpl implements SuccessSignUp {
  const _$SuccessSignUpImpl(this.data);

  @override
  final SignUpResponseModel data;

  @override
  String toString() {
    return 'SignUpState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignUpImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignUpImplCopyWith<_$SuccessSignUpImpl> get copyWith =>
      __$$SuccessSignUpImplCopyWithImpl<_$SuccessSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponseModel data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponseModel data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponseModel data)? success,
    TResult Function(ApiErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignUp value) initial,
    required TResult Function(LoadingSignUp value) loading,
    required TResult Function(SuccessSignUp value) success,
    required TResult Function(ErrorSignUp value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp value)? initial,
    TResult? Function(LoadingSignUp value)? loading,
    TResult? Function(SuccessSignUp value)? success,
    TResult? Function(ErrorSignUp value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp value)? initial,
    TResult Function(LoadingSignUp value)? loading,
    TResult Function(SuccessSignUp value)? success,
    TResult Function(ErrorSignUp value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSignUp implements SignUpState {
  const factory SuccessSignUp(final SignUpResponseModel data) =
      _$SuccessSignUpImpl;

  SignUpResponseModel get data;
  @JsonKey(ignore: true)
  _$$SuccessSignUpImplCopyWith<_$SuccessSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSignUpImplCopyWith<$Res> {
  factory _$$ErrorSignUpImplCopyWith(
          _$ErrorSignUpImpl value, $Res Function(_$ErrorSignUpImpl) then) =
      __$$ErrorSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$ErrorSignUpImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$ErrorSignUpImpl>
    implements _$$ErrorSignUpImplCopyWith<$Res> {
  __$$ErrorSignUpImplCopyWithImpl(
      _$ErrorSignUpImpl _value, $Res Function(_$ErrorSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSignUpImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorSignUpImpl implements ErrorSignUp {
  const _$ErrorSignUpImpl({required this.error});

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'SignUpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSignUpImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSignUpImplCopyWith<_$ErrorSignUpImpl> get copyWith =>
      __$$ErrorSignUpImplCopyWithImpl<_$ErrorSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponseModel data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponseModel data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponseModel data)? success,
    TResult Function(ApiErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignUp value) initial,
    required TResult Function(LoadingSignUp value) loading,
    required TResult Function(SuccessSignUp value) success,
    required TResult Function(ErrorSignUp value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp value)? initial,
    TResult? Function(LoadingSignUp value)? loading,
    TResult? Function(SuccessSignUp value)? success,
    TResult? Function(ErrorSignUp value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp value)? initial,
    TResult Function(LoadingSignUp value)? loading,
    TResult Function(SuccessSignUp value)? success,
    TResult Function(ErrorSignUp value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSignUp implements SignUpState {
  const factory ErrorSignUp({required final ApiErrorModel error}) =
      _$ErrorSignUpImpl;

  ApiErrorModel get error;
  @JsonKey(ignore: true)
  _$$ErrorSignUpImplCopyWith<_$ErrorSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
