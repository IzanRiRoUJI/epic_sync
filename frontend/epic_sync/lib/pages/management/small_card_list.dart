import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'small_card.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class SmallCardList extends StatefulWidget {
  const SmallCardList({Key? key, required this.category, required this.s})
      : super(key: key);
  final String category;
  final String s;

  @override
  SmallCardListState createState() => SmallCardListState();
}

class SmallCardListState extends State<SmallCardList> {
  bool isDraggingOver = false;
  late String backlog;

  @override
  void initState() {
    super.initState();
    backlog = widget.category.split(' ')[1];
  }

  List<epic_sync.Card> getFilteredCards() {
    CardProvider cardProvider = Provider.of<CardProvider>(context);
    if (widget.s == 'G') {
      return cardProvider.cards
              ?.where((card) => card.backlog.toString() == backlog.toString())
              .toList() ??
          [];
    } else {
      epic_sync.CardCategory category = epic_sync.CardCategory.UNKNOWN_C;
      if (widget.s == 'R') {
        category = epic_sync.CardCategory.Roadmap;
      }
      if (widget.s == 'P') {
        category = epic_sync.CardCategory.Proyectos;
      }
      return cardProvider
          .getCardsByCategory(category)
          .where((card) => card.backlog.toString() == backlog.toString())
          .toList();
    }
  }

  int priorityOrder(epic_sync.Card card) {
    switch (card.priority) {
      case epic_sync.CardPriority.Alta:
        return 0;
      case epic_sync.CardPriority.Media:
        return 1;
      case epic_sync.CardPriority.Baja:
        return 2;
      default:
        return 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool backlog = widget.category.split(' ')[1] == "Backlog";

    final themeProvider = Provider.of<ThemeProvider>(context);
    final cardProvider = Provider.of<CardProvider>(context);

    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            constraints: const BoxConstraints(minWidth: 550),
            child: ExpansionTile(
              controlAffinity: ListTileControlAffinity.leading,
              collapsedIconColor: themeProvider.primaryColor,
              collapsedBackgroundColor: themeProvider.cardBackgroundColor,
              iconColor: themeProvider.accentColor,
              maintainState: true,
              initiallyExpanded: true,
              title: Text(
                widget.category,
                style: TextStyle(
                  color: themeProvider.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                DragTarget<epic_sync.Card>(
                  onWillAccept: (data) {
                    setState(() {
                      isDraggingOver = true;
                    });
                    return true;
                  },
                  onAccept: (data) {
                    cardProvider.toggleCardBacklog(data.id, backlog);
                    setState(() {
                      isDraggingOver = false;
                    });
                  },
                  onLeave: (data) {
                    setState(() {
                      isDraggingOver = false;
                    });
                  },
                  builder: (context, candidateData, rejectedData) =>
                      buildFilteredCardsList(context, backlog),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFilteredCardsList(BuildContext context, bool backlog) {
    final cardProvider = Provider.of<CardProvider>(context);

    List<epic_sync.Card> filteredCards = getFilteredCards();

    filteredCards.sort((a, b) => priorityOrder(a).compareTo(priorityOrder(b)));

    List<Widget> filteredsortedcards = filteredCards
        .map((card) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: DraggableSmallCard(card: card),
            ))
        .toList();

    if (filteredsortedcards.isEmpty) {
      return DragTarget<epic_sync.Card>(onWillAccept: (data) {
        setState(() {
          isDraggingOver = true;
        });
        return true;
      }, onAccept: (data) {
        cardProvider.toggleCardBacklog(data.id, backlog);
        setState(() {
          isDraggingOver = false;
        });
      }, onLeave: (data) {
        setState(() {
          isDraggingOver = false;
        });
      }, builder: (context, candidateData, rejectedData) {
        if (isDraggingOver) {
          return Container(
            height: 100,
            color: Colors.green.shade100,
            alignment: Alignment.center,
            child: Text(
              'Suelta aquí para agregar la tarjeta',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }
        return Container(
          height: 20,
        );
      });
    }

    return Column(
      children: filteredsortedcards,
    );
  }
}

class DraggableSmallCard extends StatefulWidget {
  final epic_sync.Card card;
  const DraggableSmallCard({Key? key, required this.card}) : super(key: key);

  @override
  DraggableSmallCardState createState() => DraggableSmallCardState();
}

class DraggableSmallCardState extends State<DraggableSmallCard> {
  @override
  Widget build(BuildContext context) {
    return Draggable<epic_sync.Card>(
      data: widget.card,
      feedback: Material(
        elevation: 4.0,
        child: SmallCard(card: widget.card),
      ),
      childWhenDragging: Container(
        color: Colors.transparent,
      ),
      child: SmallCard(card: widget.card),
    );
  }
}
