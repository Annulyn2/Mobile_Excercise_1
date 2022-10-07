import '../class/cards.dart';
import '../programs/functions.dart';

void main() {
  List<Cards> firstDeck = <Cards>[];
  DeckPrograms deck1 = DeckPrograms(firstDeck);
  deck1.Deck();
  deck1.displayDeck();

  print("\n");

  List<Cards> newDeck = deck1.findInDeck('Hearts');
  DeckPrograms deck2 = DeckPrograms(newDeck);
  deck2.displayDeck();
}
