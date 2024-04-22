import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/pages/kanban/w_medium_card.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class MediumCardList extends StatefulWidget {
  final epic_sync.CardState state;
  final String s;

  const MediumCardList({Key? key, required this.state, required this.s})
      : super(key: key);

  @override
  MediumCardListState createState() => MediumCardListState();
}

class MediumCardListState extends State<MediumCardList> {
  bool isDropping = false;
  final ScrollController _scrollController = ScrollController();
  List<epic_sync.Card> getFilteredCards(CardProvider cardProvider) {
    if (widget.s == 'G') {
      return cardProvider.cards
              ?.where((card) =>
                  card.state == widget.state &&
                  card.backlog.toString() == "False")
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
          .where((card) =>
              card.state == widget.state && card.backlog.toString() == "False")
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
    CardProvider cardProvider = Provider.of<CardProvider>(context);
    ThemeProvider themeprovider = Provider.of<ThemeProvider>(context);
    List<epic_sync.Card>? cards = getFilteredCards(cardProvider);
    cards.sort((a, b) => priorityOrder(a).compareTo(priorityOrder(b)));
    int cardCount = cards.length;

    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${widget.state} ($cardCount)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: themeprovider.textColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: isDropping ? Colors.green[100] : null,
                child: DragTarget<epic_sync.Card>(
                  builder: (context, candidateData, rejectedData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      controller: _scrollController,
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        final card = cards[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 5),
                          child: DraggableMediumCard(
                            card: card,
                            key: ValueKey(card.id),
                          ),
                        );
                      },
                    );
                  },
                  onAccept: (card) {
                    cardProvider.moveCardtoState(card, widget.state);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DraggableMediumCard extends StatefulWidget {
  final epic_sync.Card card;

  const DraggableMediumCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  DraggableMediumCardState createState() => DraggableMediumCardState();
}

class DraggableMediumCardState extends State<DraggableMediumCard> {
  bool isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Draggable<epic_sync.Card>(
      data: widget.card,
      feedback: Transform.scale(
        scale: 0.7,
        child: MediumCard(card: widget.card),
      ),
      childWhenDragging: Container(),
      child: MediumCard(card: widget.card),
    );
  }
}
