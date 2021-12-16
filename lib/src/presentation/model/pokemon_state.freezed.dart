// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

  _Data data({List<GPokemonCard>? pokemon}) {
    return _Data(
      pokemon: pokemon,
    );
  }

  _Loading loading({List<GPokemonCard>? pokemon, required int loading}) {
    return _Loading(
      pokemon: pokemon,
      loading: loading,
    );
  }

  _Error error({List<GPokemonCard>? pokemon, Object? error}) {
    return _Error(
      pokemon: pokemon,
      error: error,
    );
  }
}

/// @nodoc
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  List<GPokemonCard>? get pokemon => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GPokemonCard>? pokemon) data,
    required TResult Function(List<GPokemonCard>? pokemon, int loading) loading,
    required TResult Function(List<GPokemonCard>? pokemon, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GPokemonCard>? pokemon)? data,
    TResult Function(List<GPokemonCard>? pokemon, int loading)? loading,
    TResult Function(List<GPokemonCard>? pokemon, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
  $Res call({List<GPokemonCard>? pokemon});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(_value.copyWith(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<GPokemonCard>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $PokemonStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<GPokemonCard>? pokemon});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(_Data(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<GPokemonCard>?,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  _$_Data({this.pokemon});

  @override
  final List<GPokemonCard>? pokemon;

  @override
  String toString() {
    return 'PokemonState.data(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality().equals(other.pokemon, pokemon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemon);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GPokemonCard>? pokemon) data,
    required TResult Function(List<GPokemonCard>? pokemon, int loading) loading,
    required TResult Function(List<GPokemonCard>? pokemon, Object? error) error,
  }) {
    return data(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GPokemonCard>? pokemon)? data,
    TResult Function(List<GPokemonCard>? pokemon, int loading)? loading,
    TResult Function(List<GPokemonCard>? pokemon, Object? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements PokemonState {
  factory _Data({List<GPokemonCard>? pokemon}) = _$_Data;

  @override
  List<GPokemonCard>? get pokemon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $PokemonStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<GPokemonCard>? pokemon, int loading});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? loading = freezed,
  }) {
    return _then(_Loading(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<GPokemonCard>?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading({this.pokemon, required this.loading});

  @override
  final List<GPokemonCard>? pokemon;
  @override
  final int loading;

  @override
  String toString() {
    return 'PokemonState.loading(pokemon: $pokemon, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality()
                    .equals(other.pokemon, pokemon)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemon) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GPokemonCard>? pokemon) data,
    required TResult Function(List<GPokemonCard>? pokemon, int loading) loading,
    required TResult Function(List<GPokemonCard>? pokemon, Object? error) error,
  }) {
    return loading(pokemon, this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GPokemonCard>? pokemon)? data,
    TResult Function(List<GPokemonCard>? pokemon, int loading)? loading,
    TResult Function(List<GPokemonCard>? pokemon, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pokemon, this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PokemonState {
  factory _Loading({List<GPokemonCard>? pokemon, required int loading}) =
      _$_Loading;

  @override
  List<GPokemonCard>? get pokemon => throw _privateConstructorUsedError;
  int get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $PokemonStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<GPokemonCard>? pokemon, Object? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? error = freezed,
  }) {
    return _then(_Error(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<GPokemonCard>?,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  _$_Error({this.pokemon, this.error});

  @override
  final List<GPokemonCard>? pokemon;
  @override
  final Object? error;

  @override
  String toString() {
    return 'PokemonState.error(pokemon: $pokemon, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality()
                    .equals(other.pokemon, pokemon)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemon) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GPokemonCard>? pokemon) data,
    required TResult Function(List<GPokemonCard>? pokemon, int loading) loading,
    required TResult Function(List<GPokemonCard>? pokemon, Object? error) error,
  }) {
    return error(pokemon, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GPokemonCard>? pokemon)? data,
    TResult Function(List<GPokemonCard>? pokemon, int loading)? loading,
    TResult Function(List<GPokemonCard>? pokemon, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(pokemon, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PokemonState {
  factory _Error({List<GPokemonCard>? pokemon, Object? error}) = _$_Error;

  @override
  List<GPokemonCard>? get pokemon => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
