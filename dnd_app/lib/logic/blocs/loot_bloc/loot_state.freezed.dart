// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LootState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function(List<Note> notes) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function(List<Note> notes)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function(List<Note> notes)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LootStateCopyWith<$Res> {
  factory $LootStateCopyWith(LootState value, $Res Function(LootState) then) =
      _$LootStateCopyWithImpl<$Res, LootState>;
}

/// @nodoc
class _$LootStateCopyWithImpl<$Res, $Val extends LootState>
    implements $LootStateCopyWith<$Res> {
  _$LootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LootInitialCopyWith<$Res> {
  factory _$$LootInitialCopyWith(
          _$LootInitial value, $Res Function(_$LootInitial) then) =
      __$$LootInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LootInitialCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootInitial>
    implements _$$LootInitialCopyWith<$Res> {
  __$$LootInitialCopyWithImpl(
      _$LootInitial _value, $Res Function(_$LootInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LootInitial implements LootInitial {
  const _$LootInitial();

  @override
  String toString() {
    return 'LootState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LootInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function(List<Note> notes) updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function(List<Note> notes)? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function(List<Note> notes)? updated,
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
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootUpdated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootUpdated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LootInitial implements LootState {
  const factory LootInitial() = _$LootInitial;
}

/// @nodoc
abstract class _$$LootLoadedCopyWith<$Res> {
  factory _$$LootLoadedCopyWith(
          _$LootLoaded value, $Res Function(_$LootLoaded) then) =
      __$$LootLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LootLoadedCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootLoaded>
    implements _$$LootLoadedCopyWith<$Res> {
  __$$LootLoadedCopyWithImpl(
      _$LootLoaded _value, $Res Function(_$LootLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LootLoaded(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LootLoaded implements LootLoaded {
  const _$LootLoaded(final List<Note> notes) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'LootState.loaded(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootLoaded &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootLoadedCopyWith<_$LootLoaded> get copyWith =>
      __$$LootLoadedCopyWithImpl<_$LootLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function(List<Note> notes) updated,
  }) {
    return loaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function(List<Note> notes)? updated,
  }) {
    return loaded?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function(List<Note> notes)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootUpdated value) updated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootUpdated value)? updated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LootLoaded implements LootState {
  const factory LootLoaded(final List<Note> notes) = _$LootLoaded;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$LootLoadedCopyWith<_$LootLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootUpdatedCopyWith<$Res> {
  factory _$$LootUpdatedCopyWith(
          _$LootUpdated value, $Res Function(_$LootUpdated) then) =
      __$$LootUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LootUpdatedCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootUpdated>
    implements _$$LootUpdatedCopyWith<$Res> {
  __$$LootUpdatedCopyWithImpl(
      _$LootUpdated _value, $Res Function(_$LootUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LootUpdated(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LootUpdated implements LootUpdated {
  const _$LootUpdated(final List<Note> notes) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'LootState.updated(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootUpdated &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootUpdatedCopyWith<_$LootUpdated> get copyWith =>
      __$$LootUpdatedCopyWithImpl<_$LootUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function(List<Note> notes) updated,
  }) {
    return updated(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function(List<Note> notes)? updated,
  }) {
    return updated?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function(List<Note> notes)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class LootUpdated implements LootState {
  const factory LootUpdated(final List<Note> notes) = _$LootUpdated;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$LootUpdatedCopyWith<_$LootUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
