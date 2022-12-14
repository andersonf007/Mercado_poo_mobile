import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/cadastroFornecedor/cadastroFornecedor_store.dart';
 
void main() {
  late CadastroFornecedorStore store;

  setUpAll(() {
    store = CadastroFornecedorStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}