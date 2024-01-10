import 'package:flutter/material.dart';
//import 'package:flickpicks/api/autenticacao_firebase.dart';



class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PageState();
}

class _PageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PerfilPage()));
                      });
                    },
                  )
                ],
                backgroundColor: const Color.fromRGBO(116, 29, 29, 1),
                title: const Text("FlickPicks")),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imagens/fundo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  //
                  child: ConstrainedBox(
                    //Informa em qual tamanho o app deve rodar
                    constraints:
                        const BoxConstraints(maxHeight: double.infinity //
                            ),
                    child: Column( 
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 40,),
                          Image.asset("assets/imagens/perfil.png", width: 300,),
                          const SizedBox(height: 40,),
                          const Text("Joealma", style: TextStyle(fontSize: 40, color: Colors.white),),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                       
                              });
                            },
                          )
                        ]),
                  ),
                ))));
  }
}
