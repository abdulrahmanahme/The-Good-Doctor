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
mixin _$SignUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignUp<T> value) initial,
    required TResult Function(LoadingSignUp<T> value) loading,
    required TResult Function(SuccessSignUp<T> value) success,
    required TResult Function(ErrorSignUp<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp<T> value)? initial,
    TResult? Function(LoadingSignUp<T> value)? loading,
    TResult? Function(SuccessSignUp<T> value)? success,
    TResult? Function(ErrorSignUp<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp<T> value)? initial,
    TResult Function(LoadingSignUp<T> value)? loading,
    TResult Function(SuccessSignUp<T> value)? success,
    TResult Function(ErrorSignUp<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<T, $Res> {
  factory $SignUpStateCopyWith(
          SignUpState<T> value, $Res Function(SignUpState<T>) then) =
      _$SignUpStateCopyWithImpl<T, $Res, SignUpState<T>>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<T, $Res, $Val extends SignUpState<T>>
    implements $SignUpStateCopyWith<T, $Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignUpImplCopyWith<T, $Res> {
  factory _$$InitialSignUpImplCopyWith(_$InitialSignUpImpl<T> value,
          $Res Function(_$InitialSignUpImpl<T>) then) =
      __$$InitialSignUpImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialSignUpImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$InitialSignUpImpl<T>>
    implements _$$InitialSignUpImplCopyWith<T, $Res> {
  __$$InitialSignUpImplCopyWithImpl(_$InitialSignUpImpl<T> _value,
      $Res Function(_$InitialSignUpImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignUpImpl<T> implements _InitialSignUp<T> {
  const _$InitialSignUpImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignUpImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_InitialSignUp<T> value) initial,
    required TResult Function(LoadingSignUp<T> value) loading,
    required TResult Function(SuccessSignUp<T> value) success,
    required TResult Function(ErrorSignUp<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp<T> value)? initial,
    TResult? Function(LoadingSignUp<T> value)? loading,
    TResult? Function(SuccessSignUp<T> value)? success,
    TResult? Function(ErrorSignUp<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp<T> value)? initial,
    TResult Function(LoadingSignUp<T> value)? loading,
    TResult Function(SuccessSignUp<T> value)? success,
    TResult Function(ErrorSignUp<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSignUp<T> implements SignUpState<T> {
  const factory _InitialSignUp() = _$InitialSignUpImpl<T>;
}

/// @nodoc
abstract class _$$LoadingSignUpImplCopyWith<T, $Res> {
  factory _$$LoadingSignUpImplCopyWith(_$LoadingSignUpImpl<T> value,
          $Res Function(_$LoadingSignUpImpl<T>) then) =
      __$$LoadingSignUpImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingSignUpImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$LoadingSignUpImpl<T>>
    implements _$$LoadingSignUpImplCopyWith<T, $Res> {
  __$$LoadingSignUpImplCopyWithImpl(_$LoadingSignUpImpl<T> _value,
      $Res Function(_$LoadingSignUpImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSignUpImpl<T> implements LoadingSignUp<T> {
  const _$LoadingSignUpImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSignUpImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_InitialSignUp<T> value) initial,
    required TResult Function(LoadingSignUp<T> value) loading,
    required TResult Function(SuccessSignUp<T> value) success,
    required TResult Function(ErrorSignUp<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp<T> value)? initial,
    TResult? Function(LoadingSignUp<T> value)? loading,
    TResult? Function(SuccessSignUp<T> value)? success,
    TResult? Function(ErrorSignUp<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp<T> value)? initial,
    TResult Function(LoadingSignUp<T> value)? loading,
    TResult Function(SuccessSignUp<T> value)? success,
    TResult Function(ErrorSignUp<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSignUp<T> implements SignUpState<T> {
  const factory LoadingSignUp() = _$LoadingSignUpImpl<T>;
}

/// @nodoc
abstract class _$$SuccessSignUpImplCopyWith<T, $Res> {
  factory _$$SuccessSignUpImplCopyWith(_$SuccessSignUpImpl<T> value,
          $Res Function(_$SuccessSignUpImpl<T>) then) =
      __$$SuccessSignUpImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessSignUpImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SuccessSignUpImpl<T>>
    implements _$$SuccessSignUpImplCopyWith<T, $Res> {
  __$$SuccessSignUpImplCopyWithImpl(_$SuccessSignUpImpl<T> _value,
      $Res Function(_$SuccessSignUpImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessSignUpImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessSignUpImpl<T> implements SuccessSignUp<T> {
  const _$SuccessSignUpImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignUpImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignUpImplCopyWith<T, _$SuccessSignUpImpl<T>> get copyWith =>
      __$$SuccessSignUpImplCopyWithImpl<T, _$SuccessSignUpImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_InitialSignUp<T> value) initial,
    required TResult Function(LoadingSignUp<T> value) loading,
    required TResult Function(SuccessSignUp<T> value) success,
    required TResult Function(ErrorSignUp<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp<T> value)? initial,
    TResult? Function(LoadingSignUp<T> value)? loading,
    TResult? Function(SuccessSignUp<T> value)? success,
    TResult? Function(ErrorSignUp<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp<T> value)? initial,
    TResult Function(LoadingSignUp<T> value)? loading,
    TResult Function(SuccessSignUp<T> value)? success,
    TResult Function(ErrorSignUp<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSignUp<T> implements SignUpState<T> {
  const factory SuccessSignUp(final T data) = _$SuccessSignUpImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessSignUpImplCopyWith<T, _$SuccessSignUpImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSignUpImplCopyWith<T, $Res> {
  factory _$$ErrorSignUpImplCopyWith(_$ErrorSignUpImpl<T> value,
          $Res Function(_$ErrorSignUpImpl<T>) then) =
      __$$ErrorSignUpImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$ErrorSignUpImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$ErrorSignUpImpl<T>>
    implements _$$ErrorSignUpImplCopyWith<T, $Res> {
  __$$ErrorSignUpImplCopyWithImpl(
      _$ErrorSignUpImpl<T> _value, $Res Function(_$ErrorSignUpImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSignUpImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorSignUpImpl<T> implements ErrorSignUp<T> {
  const _$ErrorSignUpImpl({required this.error});

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'SignUpState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSignUpImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSignUpImplCopyWith<T, _$ErrorSignUpImpl<T>> get copyWith =>
      __$$ErrorSignUpImplCopyWithImpl<T, _$ErrorSignUpImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_InitialSignUp<T> value) initial,
    required TResult Function(LoadingSignUp<T> value) loading,
    required TResult Function(SuccessSignUp<T> value) success,
    required TResult Function(ErrorSignUp<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignUp<T> value)? initial,
    TResult? Function(LoadingSignUp<T> value)? loading,
    TResult? Function(SuccessSignUp<T> value)? success,
    TResult? Function(ErrorSignUp<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignUp<T> value)? initial,
    TResult Function(LoadingSignUp<T> value)? loading,
    TResult Function(SuccessSignUp<T> value)? success,
    TResult Function(ErrorSignUp<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSignUp<T> implements SignUpState<T> {
  const factory ErrorSignUp({required final ApiErrorModel error}) =
      _$ErrorSignUpImpl<T>;

  ApiErrorModel get error;
  @JsonKey(ignore: true)
  _$$ErrorSignUpImplCopyWith<T, _$ErrorSignUpImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}