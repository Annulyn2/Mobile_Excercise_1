import '../class/cards.dart';

class DeckPrograms {
  List<Cards> cards = [];
  DeckPrograms(this.cards);

  void Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suits = ['Spade', 'Club', 'Hearts', 'Diamonds'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Cards(rank, suit);
        cards.add(card);
      }
    }
  }

  void displayDeck() {
    print("[");
    for (var card in cards) {
      if (card != cards.last) {
        print("${card.rank} of ${card.suit},");
      } else {
        print("${card.rank} of ${card.suit}]");
      }
    }
  }

  void shuffleDeck() {
    cards.shuffle();
  }

  List<Cards> findInDeck(String suit) {
    var newSet = cards.where((card) => card.suit.contains(suit));
    return newSet.toList();
  }
}
