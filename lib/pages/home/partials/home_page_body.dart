import 'package:flutter/material.dart';
import 'package:project_3_todo_list/components/note.dart';

// Definizione di HomePageBody, un widget che rappresenta il conbtenuto della homepage.
class HomePageBody extends StatelessWidget {
  final List<String> notes;
  final void Function(String note) onNoteDelete;

  const HomePageBody({required this.notes, required this.onNoteDelete});

  @override
  Widget build(BuildContext context) {
    // Expanded permette al widget di riempire lo spazio disponibile nel suo contenitore, adattandosi alla dimensione dello schermo.
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // SafeArea impedisce al contenuto di sovrapporsi a parti critiche del dispositivo come la notch o la telecamera frontale.
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              // Il titolo "Agenda Random" è posizionato qui per rimanere visibile e non scrollabile.
              child: Text(
                "Agenda Random",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // SizedBox fornisce uno spazio vuoto per una migliore separazione visiva tra il titolo e le varie note.
          SizedBox(height: 16),
          // Expanded avvolge SingleChildScrollView per consentire alle note di scorrere senza occupare troppo spazio.
          Expanded(
            // Padding aggiunge spazio ai lati del contenuto scrollabile per evitare che le note tocchino i bordi dello schermo.
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // SingleChildScrollView consente alle note di scorrere verticalmente se superano la lunghezza dello schermo.
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // La mappatura delle note in widget Note consente di visualizzare dinamicamente una lista di note.
                  children: notes
                      .map((note) => Note(
                            text: note,
                            // Associa ogni nota alla funzione onDoubleTap per la rimozione.
                            onDoubleTap: () => onNoteDelete(note),
                          ))
                      .toList(), // La conversione in lista è necessaria per costruire l'interfaccia utente.
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
