class ModelMapper<T, S> {
  final Function(T) outPutModel;

  ModelMapper(this.outPutModel);

  S map(T a) {
    try {
      return outPutModel(a);
    } catch (e) {
      throw Exception('Erro ao mapear o objeto A para o objeto B: $e');
    }
  }
}