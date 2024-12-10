import 'package:equatable/equatable.dart';

class PokemonAbility extends Equatable {
  final String name;
  final String url;

  const PokemonAbility({
    required this.name,
    required this.url,
  });

  factory PokemonAbility.fromMap(Map<String, dynamic> map) {
    return PokemonAbility(
      name: map['name'],
      url: map['url'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  PokemonAbility copyWith({
    String? name,
    String? url,
  }) {
    return PokemonAbility(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  List<Object?> get props => [name, url];
}
