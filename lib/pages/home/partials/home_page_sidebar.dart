import 'package:flutter/material.dart';

// Definizione di HomePageSideBar, un widget che rappresenta una barra laterale nella homepage.
class HomePageSideBar extends StatelessWidget {
  // Il parametro 'addNewNote' è un callback che il widget può chiamare.
  // Questo pattern è simile al passaggio di event handlers in Angular (binding) o React (props).
  // Viene utilizzato per notificare ad altri widget che un nuovo evento (come l'aggiunta di una nota) è avvenuto.
  final void Function() addNewNote;

  // Costruttore di HomePageSideBar che richiede un callback 'addNewNote'.
  const HomePageSideBar({required this.addNewNote});

  @override
  Widget build(BuildContext context) {
    // SafeArea è utilizzato per evitare che il contenuto venga bloccato da aree non interattive come la notch o i controlli del dispositivo.
    return SafeArea(
      // Container che definisce la larghezza, il colore di sfondo e il padding della barra laterale.
      child: Container(
        width: 100,
        color: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(vertical: 12),
        // Column organizza i widget figli verticalmente e li spazia uniformemente.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // CircleAvatar mostra un'immagine circolare, utilizzata qui come immagine del profilo.
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/propic_frog.jpg"),
            ),
            // IconButton è un pulsante che, quando premuto, esegue il callback 'addNewNote'.
            IconButton(
              onPressed: addNewNote,
              iconSize: 30,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
