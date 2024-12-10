import 'package:equatable/equatable.dart';

class PokemonType extends Equatable {
  final String name;
  final String url;

  const PokemonType({
    required this.name,
    required this.url,
  });

  factory PokemonType.fromMap(Map<String, dynamic> map) {
    return PokemonType(
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

  PokemonType copyWith({
    String? name,
    String? url,
  }) {
    return PokemonType(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  List<Object?> get props => [name, url];
}
