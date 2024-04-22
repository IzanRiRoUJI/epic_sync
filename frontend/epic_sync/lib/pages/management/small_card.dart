import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;
import 'package:epic_sync/pages/create_edit_card/create_card.dart';

class SmallCard extends StatelessWidget {
  final epic_sync.Card card;

  const SmallCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    epic_sync.User? user =
        userProvider.users?.firstWhere((element) => element.id == card.idUser);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Provider.of<ThemeProvider>(context).cardBackgroundColor,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      constraints: const BoxConstraints(
        minWidth: 550,
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            color: card.type.toString() == 'Historia'
                ? Colors.green
                : card.type.toString() == 'Error'
                    ? Colors.red
                    : Colors.grey[800],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateCard(
                      card: card,
                    ),
                  ),
                ).then((value) {
                  if (value == true) {}
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Provider.of<ThemeProvider>(context).accentColor),
              ),
              child:
                  Text(card.id < 10 ? 'SP 000${card.id}' : 'SP 00${card.id}'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          card.title.toString(),
                          style: TextStyle(
                              color: Provider.of<ThemeProvider>(context)
                                  .accentColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Etiquetas: ',
                        style: TextStyle(
                            color:
                                Provider.of<ThemeProvider>(context).textColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        card.labels[0].name.toString(),
                        style: TextStyle(
                            color:
                                Provider.of<ThemeProvider>(context).textColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        card.labels[1].name.toString(),
                        style: TextStyle(
                            color:
                                Provider.of<ThemeProvider>(context).textColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        card.labels[2].name.toString(),
                        style: TextStyle(
                            color:
                                Provider.of<ThemeProvider>(context).textColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  card.epic,
                  style: TextStyle(
                      color: Provider.of<ThemeProvider>(context).textColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 50,
                    width: 50,
                    child: Tooltip(
                      message: user!.name,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Provider.of<UserProvider>(context)
                              .getUserImage(user)!),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Provider.of<ThemeProvider>(context).accentColor,
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 60,
                  width: 45,
                  child: Text(
                    card.storypoints.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
