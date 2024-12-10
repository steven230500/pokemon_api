import 'package:pokemon_api/models/pokemon.dart';
import 'dio_client.dart';

class ApiService {
  final DioClient dioClient;

  ApiService({required this.dioClient});

  Future<Pokemon> fetchPokemon(String name) async {
    try {
      final response = await dioClient.get('pokemon/$name');
      return Pokemon.fromMap(response.data);
    } catch (e) {
      throw Exception('Error al obtener el Pokémon: $e');
    }
  }

  Future<List<Pokemon>> fetchPokemonList({int limit = 20, int offset = 0}) async {
    try {
      final response = await dioClient.get('pokemon', queryParameters: {
        'limit': limit,
        'offset': offset,
      });

      final List results = response.data['results'];
      return Future.wait(results.map((pokemon) async {
        final detailResponse = await dioClient.get(pokemon['url']);
        return Pokemon.fromMap(detailResponse.data);
      }).toList());
    } catch (e) {
      throw Exception('Error al obtener la lista de Pokémon: $e');
    }
  }
}
