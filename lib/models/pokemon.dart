import 'package:equatable/equatable.dart';
import 'type.dart';
import 'ability.dart';
import 'stat.dart';

class Pokemon extends Equatable {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<PokemonType> types;
  final List<PokemonAbility> abilities;
  final List<PokemonStat> stats;
  final String spriteUrl;

  const Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
    required this.stats,
    required this.spriteUrl,
  });

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'],
      name: map['name'],
      height: map['height'],
      weight: map['weight'],
      types: List<PokemonType>.from(
        map['types']?.map((type) => PokemonType.fromMap(type['type'])) ?? [],
      ),
      abilities: List<PokemonAbility>.from(
        map['abilities']?.map((ability) => PokemonAbility.fromMap(ability['ability'])) ?? [],
      ),
      stats: List<PokemonStat>.from(
        map['stats']?.map((stat) => PokemonStat.fromMap(stat)) ?? [],
      ),
      spriteUrl: map['sprites']['front_default'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'height': height,
      'weight': weight,
      'types': types.map((type) => type.toMap()).toList(),
      'abilities': abilities.map((ability) => ability.toMap()).toList(),
      'stats': stats.map((stat) => stat.toMap()).toList(),
      'sprites': {'front_default': spriteUrl},
    };
  }

  Pokemon copyWith({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<PokemonType>? types,
    List<PokemonAbility>? abilities,
    List<PokemonStat>? stats,
    String? spriteUrl,
  }) {
    return Pokemon(
      id: id ?? this.id,
      name: name ?? this.name,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      types: types ?? this.types,
      abilities: abilities ?? this.abilities,
      stats: stats ?? this.stats,
      spriteUrl: spriteUrl ?? this.spriteUrl,
    );
  }

  @override
  List<Object?> get props => [id, name, height, weight, types, abilities, stats, spriteUrl];
}
