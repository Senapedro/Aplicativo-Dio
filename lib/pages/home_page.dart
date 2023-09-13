import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadedeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        )
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ações do usuário",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              "Foi clicado $quantidadedeCliques vezes!",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              "O numero geradfo foi: $numeroGerado",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      "10",
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Text(
                      "20",
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text(
                      "30",
                      style: GoogleFonts.acme(fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            quantidadedeCliques = quantidadedeCliques + 1;
            numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(1000);
          });
        },
      ),
    );
  }
}