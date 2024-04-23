import 'package:simulador_de_api/models/produto_model.dart';

import '../http/cliente_http.dart';

abstract  class IProdutoRepository {
  Future<List<ProdutoModel>> getProduto();
}

class ProdutoRepository implements IProdutoRepository {
  final IHttpClient client;

  ProdutoRepository({required this.client});

  @override
Future<List<ProdutoModel>> getProduto() async {
    final reponse = await client.get(
      url: 'https://dummyjson.com/products'
    );
  }
}