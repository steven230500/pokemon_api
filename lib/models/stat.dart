import 'package:equatable/equatable.dart';

class PokemonStat extends Equatable {
  final String name;
  final int baseStat;

  const PokemonStat({
    required this.name,
    required this.baseStat,
  });

  factory PokemonStat.fromMap(Map<String, dynamic> map) {
    return PokemonStat(
      name: map['stat']['name'],
      baseStat: map['base_stat'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'stat': {'name': name},
      'base_stat': baseStat,
    };
  }

  PokemonStat copyWith({
    String? name,
    int? baseStat,
  }) {
    return PokemonStat(
      name: name ?? this.name,
      baseStat: baseStat ?? this.baseStat,
    );
  }

  @override
  List<Object?> get props => [name, baseStat];
}
