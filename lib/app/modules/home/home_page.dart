
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/home/home_store.dart';
import 'package:mercado_poo/app/modules/signin/signin_page.dart';

class HomePage extends StatefulWidget {
  //final String usuario;
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("",
          style: TextStyle(
            color: Colors.black
          ),                                  
        ),
        actions: [
          IconButton(
              onPressed: () {
                Modular.to.pushNamedAndRemoveUntil("/signin", (p0) => false);
                /*BackButtomCustom(
                  route: '/signin',
                );*/
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Venda',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            ElevatedButton(
                              style:  ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 250, 249, 249),
                              ),
                              onPressed: () {
                                Modular.to.pushNamed('/venda');
                              },                    
                              child: Column(
                                children: [
                                  Text('Venda',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/venda.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Compra',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            ElevatedButton(
                              style:  ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 250, 249, 249),
                              ),
                              onPressed: () {
                                Modular.to.pushNamed('/compra');
                              },                    
                              child: Column(
                                children: [
                                  Text('Compra',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/venda.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),    
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Cadastro',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/cadastrarFornecedor');
                            },
                            child: Column(
                              children: [
                                Text('fornecedor',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Image.asset(
                                  'assets/fornecedor.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/cadastroPessoa');
                            },
                            child: Column(
                              children: [
                                Text('Pessoa',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Image.asset(
                                  'assets/cliente.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 5,
                        ),    
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/cadastroVendedor');
                            },
                            child: Column(
                              children: [
                                Text('Vendedor',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Image.asset(
                                  'assets/vendedor.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                         SizedBox(
                          width: 5,
                        ),    
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/cadastroProduto');
                            },
                            child: Column(
                              children: [
                                Text('Produto',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Image.asset(
                                  'assets/produto.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),       
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Editar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/editarFornecedor');
                            },
                            child: Column(
                              children: [
                                Text('fornecedor',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Image.asset(
                                  'assets/fornecedor.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/editarCliente');
                            },
                            child: Column(
                              children: [
                                Text('Cliente',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Image.asset(
                                  'assets/cliente.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 5,
                        ),    
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/editarVendedor');
                            },
                            child: Column(
                              children: [
                                Text('Vendedor',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Image.asset(
                                  'assets/vendedor.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),
                         SizedBox(
                          width: 5,
                        ),    
                        ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 250, 249, 249),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed('/editarProduto');
                            },
                            child: Column(
                              children: [
                                Text('Produto',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Image.asset(
                                  'assets/produto.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            )),       
                      ],
                    ),
                  ),
                ],
                
              ),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
