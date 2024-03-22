import 'package:flutter/material.dart';

// Questa classe rappresenta un widget personalizzato che visualizza una nota.
class Note extends StatelessWidget {
  // 'text' è il contenuto della nota da visualizzare.
  final String text;
  // 'onDoubleTap' è un callback che viene chiamato quando l'utente effettua un doppio tap sulla nota.
  final void Function() onDoubleTap;

  // Costruttore della classe Note che richiede il testo della nota e il callback per il doppio tap.
  const Note({
    required this.text,
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector permette di rilevare varie tipologie di interazioni dell'utente, in questo caso il doppio tap.
    return GestureDetector(
      // Associa il callback 'onDoubleTap' all'evento di doppio tap:
      onDoubleTap: onDoubleTap,
      child: Container(
        // Padding interno del container:
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        // Margin esterno per separare le note tra loro:
        margin: EdgeInsets.only(bottom: 10),
        // BoxDecoration personalizza l'aspetto visivo del container.
        // La decorazione simula l'aspetto di una card con sfondo bianco, bordi arrotondati e ombra.
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              // Ombra leggera per un effetto di profondità:
              BoxShadow(
                  blurRadius: 4, // Raggio di sfocatura dell'ombra.
                  spreadRadius: 2,
                  color: Colors.black12),
            ]),
        // Il testo della nota viene visualizzato all'interno del container.
        child: Text(
          text,
          style: TextStyle(fontSize: 18), // Stile del testo della nota.
        ),
      ),
    );
  }
}
