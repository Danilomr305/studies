import 'package:simulador_de_api/models/produto_model.dart';

abstract  class IProdutoRepository {
  Future<List<ProdutoModel>> getProduto();
}

class ProdutoRepository implements IProdutoRepository {
  @override
  Future<List<ProdutoModel>> getProduto(){
    throw UnimplementedError();
  }
}