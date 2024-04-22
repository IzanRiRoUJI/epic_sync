import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:epic_sync/pages/create_edit_card/comment_widgets.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/label_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class CreateCard extends StatefulWidget {
  CreateCard({Key? key, this.card}) : super(key: key);

  epic_sync.Card? card;

  @override
  CreateCardState createState() => CreateCardState();
}

class CreateCardState extends State<CreateCard> {
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardDescriptionController =
      TextEditingController();
  final TextEditingController _cardEpicController = TextEditingController();
  epic_sync.CardCategory? _cardCategoryDropdownValue;
  epic_sync.CardType? _cardTypeDropdownValue;
  epic_sync.User? _cardUserDropdownValue;
  epic_sync.CardState? _cardStateDropdownValue;
  epic_sync.CardPriority? _cardPriorityDropdownValue;
  double? _storyPointsController;
  DateTime? _dateTime = DateTime.now();
  final Set<epic_sync.Label> _selectedLabels = {};
  final List<double> allowedStoryPoints = [0, 0.5, 1, 3, 5, 8];
  bool _isEditing = false;
  bool _isReplying = false;
  // ignore: non_constant_identifier_names
  int? _comment_parent;
  epic_sync.Card? card;

  @override
  void initState() {
    super.initState();
    _updateSelectedLabels();
  }

  void _updateSelectedLabels() {
    if (widget.card != null) {
      final List<epic_sync.Label>? allLabels =
          Provider.of<LabelProvider>(context, listen: false).labels;
      if (allLabels != null) {
        setState(() {
          _selectedLabels.clear();
          _selectedLabels.addAll(widget.card!.labels
              .where((label) => allLabels.any((l) => l.id == label.id)));
        });
      }
    }
  }

  void toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void toggleReplying([int? parent]) {
    setState(() {
      if (parent != null) {
        _comment_parent = parent;
      }
      _isReplying = !_isReplying;
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedDate = _dateTime.toString().split(' ')[0];

    if (widget.card != null) {
      final card = epic_sync.Card.fromBuffer(widget.card!.writeToBuffer());

      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final userId = card.idUser;
      final user = userProvider.users?.firstWhere((user) => user.id == userId);

      _cardNameController.text = card.title;
      _cardDescriptionController.text = card.description;
      _cardEpicController.text = card.epic;
      _cardCategoryDropdownValue = card.category;
      _cardTypeDropdownValue = card.type;
      _cardUserDropdownValue = user;
      _cardStateDropdownValue = card.state;
      _cardPriorityDropdownValue = card.priority;
      _storyPointsController = card.storypoints;
      _dateTime = DateTime.parse(card.datecreated);
      selectedDate = _dateTime.toString().split(' ')[0];
    } else {
      _isEditing = true;
    }

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: themeProvider.primaryColor,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  !_isEditing
                      ? 'Detalles de la tarjeta: '
                      : widget.card != null
                          ? 'Editar tarjeta: '
                          : 'Crear tarjeta: ',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                child: Container(
                  width: 3,
                  height: 30,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    enabled: _isEditing,
                    controller: _cardNameController,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Título de la card",
                      hintStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      border: InputBorder.none,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              _isEditing
                  ? Container()
                  : IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          _isEditing = !_isEditing;
                        });
                      },
                    ),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: themeProvider.backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  children: [
                    Flexible(
                      flex: 40,
                      child: Column(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                enabled: _isEditing,
                                cursorColor: themeProvider.accentColor,
                                controller: _cardEpicController,
                                decoration: InputDecoration(
                                  labelText: 'Épica',
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: themeProvider.textColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: themeProvider.accentColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: themeProvider.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: TextField(
                                enabled: _isEditing,
                                keyboardType: TextInputType.multiline,
                                controller: _cardDescriptionController,
                                maxLines: 5,
                                cursorColor: themeProvider.accentColor,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.primaryColor,
                                      width: 1,
                                    ),
                                  ),
                                  labelText: 'Descripcion',
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: themeProvider.textColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.accentColor,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.primaryColor,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.loose,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Consumer<LabelProvider>(
                                    builder: (context, labelProvider, child) =>
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Etiquetas',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: themeProvider.textColor,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          spacing: 10,
                                          runSpacing: 5,
                                          children: !_isEditing
                                              ? _selectedLabels
                                                  .map((label) => FilterChip(
                                                        label: Text(
                                                          label.name,
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        selected: true,
                                                        onSelected:
                                                            (bool selected) {},
                                                        disabledColor: themeProvider
                                                            .cardBackgroundColor,
                                                        selectedColor: Provider
                                                                .of<ThemeProvider>(
                                                                    context)
                                                            .accentColor,
                                                      ))
                                                  .toList()
                                              : labelProvider.labels!
                                                  .map((label) => FilterChip(
                                                        label: Text(
                                                          label.name,
                                                          style: TextStyle(
                                                            color: _selectedLabels
                                                                    .contains(
                                                                        label)
                                                                ? Colors.white
                                                                : Colors.black,
                                                          ),
                                                        ),
                                                        selected:
                                                            _selectedLabels
                                                                .contains(
                                                                    label),
                                                        onSelected:
                                                            (bool selected) {
                                                          setState(() {
                                                            if (selected) {
                                                              _selectedLabels
                                                                  .add(label);
                                                            } else {
                                                              _selectedLabels
                                                                  .remove(
                                                                      label);
                                                            }
                                                            if (widget.card !=
                                                                null) {
                                                              card?.labels.addAll(
                                                                  _selectedLabels);
                                                            }
                                                          });
                                                        },
                                                        selectedColor: Provider
                                                                .of<ThemeProvider>(
                                                                    context)
                                                            .accentColor,
                                                      ))
                                                  .toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 60,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: DropdownButtonFormField<
                                      epic_sync.CardType>(
                                    hint: Text('Tipo de card',
                                        style: TextStyle(
                                            color: themeProvider.textColor)),
                                    isExpanded: true,
                                    value: _cardTypeDropdownValue,
                                    items: !_isEditing
                                        ? [
                                            DropdownMenuItem<
                                                epic_sync.CardType>(
                                              value: _cardTypeDropdownValue,
                                              child: Text(
                                                  _cardTypeDropdownValue
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: themeProvider
                                                          .textColor)),
                                            )
                                          ]
                                        : epic_sync.CardType.values
                                            .where((type) =>
                                                type !=
                                                epic_sync.CardType.UNKNOWN_T)
                                            .map<
                                                    DropdownMenuItem<
                                                        epic_sync.CardType>>(
                                                (epic_sync.CardType value) {
                                            return DropdownMenuItem<
                                                epic_sync.CardType>(
                                              enabled: _isEditing,
                                              value: value,
                                              child: Text(value.toString()),
                                            );
                                          }).toList(),
                                    onChanged: !_isEditing
                                        ? null
                                        : (epic_sync.CardType? value) {
                                            setState(() {
                                              FocusScope.of(context)
                                                  .requestFocus(FocusNode());
                                              _cardTypeDropdownValue = value;
                                              if (widget.card != null) {
                                                card?.type = value!;
                                              }
                                            });
                                          },
                                    style: TextStyle(
                                      color: themeProvider.textColor,
                                    ),
                                    dropdownColor:
                                        themeProvider.backgroundColor,
                                    focusColor: themeProvider.primaryColor,
                                    iconEnabledColor: themeProvider.accentColor,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: DropdownButtonFormField<
                                      epic_sync.CardState>(
                                    hint: Text('Estado de la card',
                                        style: TextStyle(
                                            color: themeProvider.textColor)),
                                    isExpanded: true,
                                    value: _cardStateDropdownValue,
                                    items: !_isEditing
                                        ? [
                                            DropdownMenuItem<
                                                epic_sync.CardState>(
                                              value: _cardStateDropdownValue,
                                              child: Text(
                                                  _cardStateDropdownValue
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: themeProvider
                                                          .textColor)),
                                            )
                                          ]
                                        : epic_sync.CardState.values
                                            .where((state) =>
                                                state !=
                                                epic_sync.CardState.UNKNOWN_S)
                                            .map<
                                                    DropdownMenuItem<
                                                        epic_sync.CardState>>(
                                                (epic_sync.CardState value) {
                                            return DropdownMenuItem<
                                                epic_sync.CardState>(
                                              value: value,
                                              child: Text(value.toString()),
                                            );
                                          }).toList(),
                                    onChanged: !_isEditing
                                        ? null
                                        : (epic_sync.CardState? value) {
                                            setState(() {
                                              _cardStateDropdownValue = value;
                                              if (widget.card != null) {
                                                card?.state = value!;
                                              }
                                            });
                                          },
                                    style: TextStyle(
                                      color: themeProvider.textColor,
                                    ),
                                    dropdownColor:
                                        themeProvider.backgroundColor,
                                    iconEnabledColor: themeProvider.accentColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: DropdownButtonFormField<
                                      epic_sync.CardCategory>(
                                    hint: Text('Categoría de la card',
                                        style: TextStyle(
                                            color: themeProvider.textColor)),
                                    isExpanded: true,
                                    value: _cardCategoryDropdownValue,
                                    items: !_isEditing
                                        ? [
                                            DropdownMenuItem<
                                                epic_sync.CardCategory>(
                                              value: _cardCategoryDropdownValue,
                                              child: Text(
                                                  _cardCategoryDropdownValue
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: themeProvider
                                                          .textColor)),
                                            )
                                          ]
                                        : epic_sync.CardCategory.values
                                            .where((category) =>
                                                category !=
                                                epic_sync
                                                    .CardCategory.UNKNOWN_C)
                                            .map<
                                                    DropdownMenuItem<
                                                        epic_sync
                                                            .CardCategory>>(
                                                (epic_sync.CardCategory value) {
                                            return DropdownMenuItem<
                                                epic_sync.CardCategory>(
                                              value: value,
                                              child: Text(value.toString()),
                                            );
                                          }).toList(),
                                    onChanged: !_isEditing
                                        ? null
                                        : (epic_sync.CardCategory? value) {
                                            setState(() {
                                              _cardCategoryDropdownValue =
                                                  value;
                                              if (widget.card != null) {
                                                card?.category = value!;
                                              }
                                            });
                                          },
                                    style: TextStyle(
                                      color: themeProvider.textColor,
                                    ),
                                    dropdownColor:
                                        themeProvider.backgroundColor,
                                    iconEnabledColor: themeProvider.accentColor,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Fecha de creación:',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                            color: themeProvider.textColor,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: _isEditing
                                              ? () async {
                                                  _dateTime =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2025),
                                                  );
                                                  setState(() {
                                                    selectedDate = _dateTime
                                                        .toString()
                                                        .split('')[0];
                                                    if (widget.card != null &&
                                                        _dateTime != null) {
                                                      card?.datecreated =
                                                          _dateTime.toString();
                                                    }
                                                  });
                                                }
                                              : null,
                                          style: ButtonStyle(
                                            backgroundColor: !_isEditing
                                                ? MaterialStateProperty
                                                    .all<Color>(themeProvider
                                                        .cardBackgroundColor)
                                                : selectedDate.isEmpty
                                                    ? MaterialStateProperty.all<
                                                            Color>(
                                                        themeProvider
                                                            .accentColor)
                                                    : MaterialStateProperty.all<
                                                            Color>(
                                                        themeProvider
                                                            .primaryColor),
                                            shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            _dateTime == null
                                                ? 'Seleccionar'
                                                : selectedDate,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w200,
                                              color: !_isEditing
                                                  ? Colors.black
                                                  : selectedDate.isEmpty
                                                      ? themeProvider.textColor
                                                      : Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Consumer<UserProvider>(
                                    builder: (context, userProvider, child) =>
                                        DropdownButtonFormField<epic_sync.User>(
                                      hint: Text('Responsable',
                                          style: TextStyle(
                                            color: _isEditing
                                                ? themeProvider.textColor
                                                : Colors.grey,
                                          )),
                                      isExpanded: true,
                                      style: TextStyle(
                                          color: themeProvider.textColor),
                                      onChanged: !_isEditing
                                          ? null
                                          : (epic_sync.User? value) {
                                              setState(() {
                                                _cardUserDropdownValue = value;
                                                if (widget.card != null) {
                                                  card?.idUser = value!.id;
                                                }
                                              });
                                            },
                                      iconEnabledColor: _isEditing
                                          ? themeProvider.accentColor
                                          : Colors.grey,
                                      dropdownColor:
                                          themeProvider.backgroundColor,
                                      value: _cardUserDropdownValue,
                                      items: !_isEditing
                                          ? [
                                              DropdownMenuItem<epic_sync.User>(
                                                value: _cardUserDropdownValue,
                                                child: Text(
                                                  _cardUserDropdownValue!.name
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: themeProvider
                                                          .textColor),
                                                ),
                                              ),
                                            ]
                                          : [
                                              for (var user
                                                  in userProvider.users!)
                                                DropdownMenuItem<
                                                    epic_sync.User>(
                                                  value: user,
                                                  child: Text(
                                                    user.name,
                                                    style: TextStyle(
                                                      color: themeProvider
                                                          .textColor,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: DropdownButtonFormField<
                                      epic_sync.CardPriority>(
                                    hint: Text('Prioridad de la card',
                                        style: TextStyle(
                                            color: themeProvider.textColor)),
                                    isExpanded: true,
                                    value: _cardPriorityDropdownValue,
                                    items: !_isEditing
                                        ? [
                                            DropdownMenuItem<
                                                epic_sync.CardPriority>(
                                              value: _cardPriorityDropdownValue,
                                              child: Text(
                                                  _cardPriorityDropdownValue
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: themeProvider
                                                          .textColor)),
                                            )
                                          ]
                                        : epic_sync.CardPriority.values
                                            .where((priority) =>
                                                priority !=
                                                epic_sync
                                                    .CardPriority.UNKNOWN_P)
                                            .map<
                                                    DropdownMenuItem<
                                                        epic_sync
                                                            .CardPriority>>(
                                                (epic_sync.CardPriority value) {
                                            return DropdownMenuItem<
                                                epic_sync.CardPriority>(
                                              value: value,
                                              child: Text(value.toString()),
                                            );
                                          }).toList(),
                                    onChanged: !_isEditing
                                        ? null
                                        : (epic_sync.CardPriority? value) {
                                            setState(() {
                                              _cardPriorityDropdownValue =
                                                  value;
                                            });
                                          },
                                    style: TextStyle(
                                      color: themeProvider.textColor,
                                    ),
                                    dropdownColor:
                                        themeProvider.backgroundColor,
                                    iconEnabledColor: themeProvider.accentColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Story Points',
                                        style: TextStyle(
                                          color: themeProvider.textColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Wrap(
                                        spacing: 10,
                                        runSpacing: 10,
                                        children: allowedStoryPoints
                                            .map((double value) {
                                          return GestureDetector(
                                            onTap: _isEditing
                                                ? () {
                                                    setState(() {
                                                      _storyPointsController =
                                                          value;
                                                      if (widget.card != null) {
                                                        card?.storypoints =
                                                            value;
                                                      }
                                                    });
                                                  }
                                                : null, // Desactivar la interacción
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: _storyPointsController ==
                                                        value
                                                    ? themeProvider.accentColor
                                                    : themeProvider
                                                        .cardBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                value.toString(),
                                                style: TextStyle(
                                                  color:
                                                      _storyPointsController ==
                                                              value
                                                          ? Colors.white
                                                          : themeProvider
                                                              .textColor,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: themeProvider.primaryColor,
                thickness: 1,
              ),
              _isEditing || _isReplying
                  ? (widget.card != null)
                      ? WriteCommentBox(
                          cardToComment: widget.card!,
                          callback: toggleReplying,
                          parent: _comment_parent,
                        )
                      : const SizedBox.shrink()
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Row(
                          children: [
                            widget.card != null
                                ? CommentsBlock(
                                    widget: widget, callback: toggleReplying)
                                : Container(),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
        floatingActionButton: _isEditing
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  widget.card?.id != null
                      ? Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: FloatingActionButton.extended(
                            elevation: 0,
                            hoverElevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            heroTag: 'eliminar',
                            label: const Text('Eliminar'),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red[300],
                            onPressed: (() => {
                                  Provider.of<CardProvider>(context,
                                          listen: false)
                                      .removeCardById(widget.card!.id),
                                  Navigator.pop(context),
                                }),
                          ),
                        )
                      : const SizedBox(),
                  FloatingActionButton.extended(
                    elevation: 0,
                    hoverElevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      side: BorderSide(
                        color: themeProvider.accentColor,
                        width: 1.0,
                      ),
                    ),
                    heroTag: 'descartar',
                    label: const Text('Descartar'),
                    foregroundColor: themeProvider.accentColor,
                    backgroundColor: themeProvider.backgroundColor,
                    onPressed: (() => {
                          Navigator.pop(context),
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: FloatingActionButton.extended(
                      elevation: 0,
                      hoverElevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        side: BorderSide(
                          color: themeProvider.primaryColor,
                          width: 1.0,
                        ),
                      ),
                      heroTag: 'guardar',
                      label: const Text(' Guardar '),
                      backgroundColor: themeProvider.primaryColor,
                      onPressed: (() => {
                            if (_checkNulls())
                              {
                                _saveCard(),
                                Navigator.pop(context),
                              }
                          }),
                    ),
                  ),
                ],
              )
            : null,
      ),
    );
  }

  Widget buildDropdownFormField<T>(
    String hintText,
    T value,
    List<T> items,
    ValueChanged<T?>? onChanged,
  ) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownButtonFormField<T>(
          hint: Text(
            hintText,
            style: TextStyle(color: themeProvider.textColor),
          ),
          isExpanded: true,
          value: value,
          items: !_isEditing
              ? [
                  DropdownMenuItem<T>(
                    value: value,
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: themeProvider.textColor),
                    ),
                  )
                ]
              : items
                  .map<DropdownMenuItem<T>>(
                    (item) => DropdownMenuItem<T>(
                      value: item,
                      child: Text(item.toString()),
                    ),
                  )
                  .toList(),
          onChanged: !_isEditing ? null : onChanged,
          style: TextStyle(color: themeProvider.textColor),
          dropdownColor: themeProvider.backgroundColor,
          iconEnabledColor: themeProvider.accentColor,
        ),
      ),
    );
  }

  bool _checkNulls() {
    if (_cardNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El título de la tarjeta parece vacío'),
        ),
      );
      return false;
    }
    if (_cardDescriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('La descripción de la tarjeta no puede estar vacía'),
        ),
      );
      return false;
    }
    if (_cardEpicController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('La épica de la card no puede estar vacía'),
        ),
      );
      return false;
    }
    if (_cardTypeDropdownValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Completa el tipo de la tarjeta'),
        ),
      );
      return false;
    }

    if (_selectedLabels.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Selecciona al menos 3 etiquetas'),
        ),
      );
      return false;
    }

    if (_cardCategoryDropdownValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Completa la categoría de la tarjeta'),
        ),
      );
      return false;
    }
    if (_cardUserDropdownValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Asigna un responsable a la tarjeta'),
        ),
      );
      return false;
    }
    if (_cardStateDropdownValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Indica el estado de la tarjeta'),
        ),
      );
      return false;
    }

    if (_dateTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Selecciona una fecha para la tarjeta'),
        ),
      );
      return false;
    }

    if (_cardPriorityDropdownValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Asigna una prioridad a la tarjeta'),
        ),
      );
      return false;
    }
    if (_storyPointsController == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Asigna un valor de Story Points a la tarjeta'),
        ),
      );
      return false;
    }
    return true;
  }

  void _saveCard() {
    final title = _cardNameController.text;
    final description = _cardDescriptionController.text;
    final epic = _cardEpicController.text;
    final double storyPoints = _storyPointsController ?? 0;

    CardProvider cardProvider =
        Provider.of<CardProvider>(context, listen: false);

    if (widget.card == null) {
      final newCard = epic_sync.Card(
        id: Int64(cardProvider.getHighestCardId() + 1),
        title: title,
        description: description,
        epic: epic,
        category: _cardCategoryDropdownValue!,
        type: _cardTypeDropdownValue!,
        state: _cardStateDropdownValue!,
        priority: _cardPriorityDropdownValue!,
        datecreated: _dateTime.toString(),
        storypoints: storyPoints,
        labels: _selectedLabels.toList(),
        idUser: _cardUserDropdownValue!.id,
        backlog: epic_sync.CardBacklog.False,
      );
      cardProvider.addCard(newCard);
    } else {
      setState(() {
        widget.card!.title = card?.title ?? '';
        widget.card!.description = card?.description ?? '';
        widget.card!.epic = card?.epic ?? '';
        widget.card!.category =
            card?.category ?? epic_sync.CardCategory.UNKNOWN_C;
        widget.card!.type = card?.type ?? epic_sync.CardType.UNKNOWN_T;
        widget.card!.state = card?.state ?? epic_sync.CardState.UNKNOWN_S;
        widget.card!.priority =
            card?.priority ?? epic_sync.CardPriority.UNKNOWN_P;
        widget.card!.datecreated = card?.datecreated ?? '';
        widget.card!.storypoints = card?.storypoints ?? 0;
        widget.card!.labels.clear();
        widget.card!.labels.addAll(_selectedLabels);
        widget.card!.idUser = card?.idUser ?? Int64(0);
      });
      cardProvider.updateCard(widget.card!);
    }
  }
}
