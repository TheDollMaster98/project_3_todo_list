import 'package:flutter/material.dart';
import 'package:project_3_todo_list/pages/home/partials/home_page_body.dart';
import 'package:project_3_todo_list/pages/home/partials/home_page_sidebar.dart';

// HomePage è uno StatefulWidget che gestisce lo stato delle note.
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

// HomePageState contiene la logica per aggiungere e rimuovere note.
class HomePageState extends State<HomePage> {
  // Lista di stringhe che rappresenta le note.
  List<String> notes = [];

  // la logica della nuova nota va messa nell'HomePage
  // che ha accesso alla var notes
  // poi passerò la funzione all'interno della sideBar
  // che la richiamerà al click.
  void addNewNote() {
    final note = ([
      "Nuova nota veramente lunga!",
      "Comprare il sugo.",
      "Risolvere i bug.",
      "Dare la pappa a Cip.",
      "Andare a ChinaTown.",
      "Lode al Sole!",
      "Sushi lover.",
      "Push the payload!",
    ]..shuffle())
        .first;
    setState(() {
      notes.add(note);
    });
  }

  void onDeleteNewNote(String note) {
    setState(() {
      notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Utilizzo di Row per disporre la sidebar e il corpo della pagina affiancati.
      // Se usassi Stack al posto di row
      // le note andrebbero sopra la sidebar
      // perché prenderebbe l'intero spazio disponibile
      body: Row(
        // Allinea i widget figli all'inizio della colonna trasversale:
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar che contiene il pulsante per aggiungere note:
          HomePageSideBar(addNewNote: addNewNote),
          // Passa la lista di note al corpo della pagina:
          HomePageBody(
            notes: notes,
            onNoteDelete: onDeleteNewNote,
          ),
        ],
      ),
    );
  }
}
