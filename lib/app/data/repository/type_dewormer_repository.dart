import 'package:luna_app/app/data/model/type_dewormer_model.dart';
import 'package:luna_app/app/data/providers/type_dewormer_provider.dart';

class TypeDewormerRepository {
  final TypeDewormerProvider _typeDewormerProvider = TypeDewormerProvider();

  Future<List<TypeDewormer>> getTypeDewormers() async {
    final response = await _typeDewormerProvider.getTypeDewormers();
    if (response.status.hasError) {
      throw Exception('Error al mostrar type razas');
    } else {
      final List<dynamic> typeDewormerJson = response.body;
      return typeDewormerJson.map((json) => TypeDewormer.fromJson(json)).toList();
    }
  }

  Future<TypeDewormer> createTypeDewormer(TypeDewormerCreate typeDewormerCreate) async {

    final response = await _typeDewormerProvider.createTypeDewormer(typeDewormerCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear tipo de raza');
    } else {
      final dynamic typeDewormerJson = response.body;
      return TypeDewormer.fromJson(typeDewormerJson);
    }
  }

  Future<TypeDewormer> getTypeDewormer(int typeDewormerId) async {
    final response = await _typeDewormerProvider.getTypeDewormer(typeDewormerId);
    if (response.status.hasError){
      throw Exception('Error al mostrar tipo raza');
    } else {
      final dynamic typeDewormerJson = response.body;
      return TypeDewormer.fromJson(typeDewormerJson);
    }
  }

  Future<TypeDewormer> updateTypeDewormer(
      int? typeDewormerId,
      TypeDewormer typeDewormer
      ) async {

    final response = await _typeDewormerProvider.updateTypeDewormer(typeDewormerId, typeDewormer);
    if (response.status.hasError){
      throw Exception('Error al actualizar tipo raza');
    } else {
      final dynamic typeDewormerJson = response.body;
      return TypeDewormer.fromJson(typeDewormerJson);
    }
  }

  Future deleteTypeDewormer(int typeDewormerId) async {
    final response = await _typeDewormerProvider.deleteTypeDewormer(typeDewormerId);
    if (response.status.hasError){
      throw Exception('Error al eliminar tipo raza');
    }
  }
}
