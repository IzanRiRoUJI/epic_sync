import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/providers/card_provider.dart';
import 'package:scrum_management/providers/theme_provider.dart';
import 'small_card.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

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

  List<scrum_management.Card> getFilteredCards() {
    CardProvider cardProvider = Provider.of<CardProvider>(context);
    if (widget.s == 'G') {
      return cardProvider.cards
              ?.where((card) => card.backlog.toString() == backlog.toString())
              .toList() ??
          [];
    } else {
      scrum_management.CardCategory category =
          scrum_management.CardCategory.UNKNOWN_C;
      if (widget.s == 'R') {
        category = scrum_management.CardCategory.Roadmap;
      }
      if (widget.s == 'P') {
        category = scrum_management.CardCategory.Proyectos;
      }
      return cardProvider
          .getCardsByCategory(category)
          .where((card) => card.backlog.toString() == backlog.toString())
          .toList();
    }
  }

  int priorityOrder(scrum_management.Card card) {
    switch (card.priority) {
      case scrum_management.CardPriority.Alta:
        return 0;
      case scrum_management.CardPriority.Media:
        return 1;
      case scrum_management.CardPriority.Baja:
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
                DragTarget<scrum_management.Card>(
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

    List<scrum_management.Card> filteredCards = getFilteredCards();

    filteredCards.sort((a, b) => priorityOrder(a).compareTo(priorityOrder(b)));

    List<Widget> filteredsortedcards = filteredCards
        .map((card) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: DraggableSmallCard(card: card),
            ))
        .toList();

    if (filteredsortedcards.isEmpty) {
      return DragTarget<scrum_management.Card>(onWillAccept: (data) {
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
  final scrum_management.Card card;
  const DraggableSmallCard({Key? key, required this.card}) : super(key: key);

  @override
  DraggableSmallCardState createState() => DraggableSmallCardState();
}

class DraggableSmallCardState extends State<DraggableSmallCard> {
  @override
  Widget build(BuildContext context) {
    return Draggable<scrum_management.Card>(
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
