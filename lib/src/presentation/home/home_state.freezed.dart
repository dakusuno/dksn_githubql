// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {AsyncValue<List<GAllPokemonData_pokemons_results>> state =
          const AsyncValue.loading(),
      required List<GAllPokemonData_pokemons_results> pokemons}) {
    return _HomeState(
      state: state,
      pokemons: pokemons,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  AsyncValue<List<GAllPokemonData_pokemons_results>> get state =>
      throw _privateConstructorUsedError;
  List<GAllPokemonData_pokemons_results> get pokemons =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {AsyncValue<List<GAllPokemonData_pokemons_results>> state,
      List<GAllPokemonData_pokemons_results> pokemons});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? pokemons = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GAllPokemonData_pokemons_results>>,
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<GAllPokemonData_pokemons_results>,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncValue<List<GAllPokemonData_pokemons_results>> state,
      List<GAllPokemonData_pokemons_results> pokemons});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? state = freezed,
    Object? pokemons = freezed,
  }) {
    return _then(_HomeState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GAllPokemonData_pokemons_results>>,
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<GAllPokemonData_pokemons_results>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.state = const AsyncValue.loading(), required this.pokemons});

  @JsonKey(defaultValue: const AsyncValue.loading())
  @override
  final AsyncValue<List<GAllPokemonData_pokemons_results>> state;
  @override
  final List<GAllPokemonData_pokemons_results> pokemons;

  @override
  String toString() {
    return 'HomeState(state: $state, pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.pokemons, pokemons) ||
                const DeepCollectionEquality()
                    .equals(other.pokemons, pokemons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(pokemons);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {AsyncValue<List<GAllPokemonData_pokemons_results>> state,
      required List<GAllPokemonData_pokemons_results> pokemons}) = _$_HomeState;

  @override
  AsyncValue<List<GAllPokemonData_pokemons_results>> get state =>
      throw _privateConstructorUsedError;
  @override
  List<GAllPokemonData_pokemons_results> get pokemons =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
