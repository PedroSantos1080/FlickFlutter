import 'package:flickpicks/api/autenticacao_firebase.dart';
import 'package:flickpicks/pages/perfil_page.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Flickpicks"),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                    // Adicione todos os outros widgets do Drawer aqui Teste
                    children: [
                      ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Perfil"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PerfilPage()));
                  },
                ),
                    ],
                    ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Deslogar"),
                  onTap: () {
                    AutenticacaoFirebase().deslogar();
                  },
                ),
              ),
            ],
          ),
        ));

        
  }
}
