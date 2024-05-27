import 'package:epic_sync/pages/create_edit_card/edit_dart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class MediumCard extends StatelessWidget {
  final epic_sync.Card card;

  const MediumCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    UserProvider userProvider = Provider.of<UserProvider>(context);

    epic_sync.User? user =
        userProvider.users?.firstWhere((element) => element.id == card.idUser);

    return Consumer<CardProvider>(builder: (context, cardProvider, child) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: themeProvider.cardBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: themeProvider.shadowColor,
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        constraints: const BoxConstraints(
            minHeight: 130, maxHeight: 130, minWidth: 300, maxWidth: 400),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: card.type.toString() == 'Historia'
                    ? Colors.green
                    : card.type.toString() == 'Error'
                        ? Colors.red
                        : Colors.grey[800],
              ),
            ),
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      card.title.toString(),
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: 18,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      card.epic.toString(),
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditCard(
                                  card: card,
                                ),
                              ),
                            ).then((value) {
                              if (value == true) {}
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Provider.of<ThemeProvider>(context)
                                    .accentColor),
                          ),
                          child: Text(
                            card.id < 10
                                ? 'SP 000${card.id}'
                                : 'SP 00${card.id}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      card.labels[0].name.toString(),
                                      style: TextStyle(
                                        color: themeProvider.textColor,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    card.labels[1].name.toString(),
                                    style: TextStyle(
                                      color: themeProvider.textColor,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (card.labels.length >= 4)
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        card.labels[2].name.toString(),
                                        style: TextStyle(
                                          color: themeProvider.textColor,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      card.labels[3].name.toString(),
                                      style: TextStyle(
                                        color: themeProvider.textColor,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 45,
                      width: 45,
                      child: Tooltip(
                        message: user!.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Provider.of<UserProvider>(context)
                              .getUserImage(user)!,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(bottom: 12, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: themeProvider.accentColor,
                      ),
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        card.storypoints.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          color: themeProvider.contrastTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
