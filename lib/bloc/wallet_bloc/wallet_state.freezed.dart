// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletModel wallet) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletModel wallet)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletModel wallet)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletInitialImplCopyWith<$Res> {
  factory _$$WalletInitialImplCopyWith(
          _$WalletInitialImpl value, $Res Function(_$WalletInitialImpl) then) =
      __$$WalletInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletInitialImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletInitialImpl>
    implements _$$WalletInitialImplCopyWith<$Res> {
  __$$WalletInitialImplCopyWithImpl(
      _$WalletInitialImpl _value, $Res Function(_$WalletInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletInitialImpl implements WalletInitial {
  const _$WalletInitialImpl();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletModel wallet) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletModel wallet)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletModel wallet)? loaded,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WalletInitial implements WalletState {
  const factory WalletInitial() = _$WalletInitialImpl;
}

/// @nodoc
abstract class _$$WalletLoadingImplCopyWith<$Res> {
  factory _$$WalletLoadingImplCopyWith(
          _$WalletLoadingImpl value, $Res Function(_$WalletLoadingImpl) then) =
      __$$WalletLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletLoadingImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletLoadingImpl>
    implements _$$WalletLoadingImplCopyWith<$Res> {
  __$$WalletLoadingImplCopyWithImpl(
      _$WalletLoadingImpl _value, $Res Function(_$WalletLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletLoadingImpl implements WalletLoading {
  const _$WalletLoadingImpl();

  @override
  String toString() {
    return 'WalletState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletModel wallet) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletModel wallet)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletModel wallet)? loaded,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletLoading implements WalletState {
  const factory WalletLoading() = _$WalletLoadingImpl;
}

/// @nodoc
abstract class _$$WalletUpdatedImplCopyWith<$Res> {
  factory _$$WalletUpdatedImplCopyWith(
          _$WalletUpdatedImpl value, $Res Function(_$WalletUpdatedImpl) then) =
      __$$WalletUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletModel wallet});
}

/// @nodoc
class __$$WalletUpdatedImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletUpdatedImpl>
    implements _$$WalletUpdatedImplCopyWith<$Res> {
  __$$WalletUpdatedImplCopyWithImpl(
      _$WalletUpdatedImpl _value, $Res Function(_$WalletUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$WalletUpdatedImpl(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
    ));
  }
}

/// @nodoc

class _$WalletUpdatedImpl implements WalletUpdated {
  const _$WalletUpdatedImpl(this.wallet);

  @override
  final WalletModel wallet;

  @override
  String toString() {
    return 'WalletState.loaded(wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletUpdatedImpl &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletUpdatedImplCopyWith<_$WalletUpdatedImpl> get copyWith =>
      __$$WalletUpdatedImplCopyWithImpl<_$WalletUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletModel wallet) loaded,
  }) {
    return loaded(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletModel wallet)? loaded,
  }) {
    return loaded?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletModel wallet)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WalletUpdated implements WalletState {
  const factory WalletUpdated(final WalletModel wallet) = _$WalletUpdatedImpl;

  WalletModel get wallet;
  @JsonKey(ignore: true)
  _$$WalletUpdatedImplCopyWith<_$WalletUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
