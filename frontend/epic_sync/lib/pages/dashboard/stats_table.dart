import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class StatsTable extends StatelessWidget {
  final String dashboardName;

  const StatsTable({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<epic_sync.CardState> columnNames = [
      epic_sync.CardState.Pendiente,
      epic_sync.CardState.Proceso,
      epic_sync.CardState.Revisar,
      epic_sync.CardState.Listo
    ];

    return Consumer2<CardProvider, ThemeProvider>(
      builder: (context, cardProvider, themeProvider, child) => Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {
            0: FractionColumnWidth(0.3),
            1: FractionColumnWidth(0.3),
            2: FractionColumnWidth(0.4),
          },
          children: [
            TableRow(
              children: [
                TableCell(child: buildCell(context, 'Estado', true)),
                TableCell(child: buildCell(context, 'Recuento', true)),
                TableCell(child: buildCell(context, 'Progreso', true)),
              ],
            ),
            ...columnNames.map((columnName) {
              int recuento = dashboardName == 'General'
                  ? cardProvider.getCardStateCount(columnName)
                  : dashboardName == 'Proyectos'
                      ? cardProvider.getCardStateCountByCategory(
                          epic_sync.CardCategory.Proyectos, columnName)
                      : cardProvider.getCardStateCountByCategory(
                          epic_sync.CardCategory.Roadmap, columnName);

              int recuentoTotal = dashboardName == 'General'
                  ? cardProvider.getTotalCardCount()
                  : dashboardName == 'Proyectos'
                      ? cardProvider.getCardCategoryCount(
                          epic_sync.CardCategory.Proyectos)
                      : cardProvider
                          .getCardCategoryCount(epic_sync.CardCategory.Roadmap);

              double recuentoPorcentaje =
                  recuentoTotal != 0 ? recuento / recuentoTotal : 0.0;

              return TableRow(
                children: [
                  TableCell(
                      child: buildCell(context, columnName.toString(), false)),
                  TableCell(
                      child: buildCell(context, recuento.toString(), false)),
                  TableCell(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: recuentoPorcentaje > 0
                            ? LinearProgressIndicator(
                                minHeight: 10,
                                backgroundColor:
                                    Provider.of<ThemeProvider>(context)
                                        .shadowColor,
                                color: recuentoPorcentaje > 0.6
                                    ? Colors.green
                                    : recuentoPorcentaje > 0.3
                                        ? Colors.yellow
                                        : Colors.red,
                                value: recuentoPorcentaje,
                              )
                            : const Center(child: Text('Sin tareas'))),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget buildCell(BuildContext context, String text, bool isHeader) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Provider.of<ThemeProvider>(context).textColor,
          fontSize: 18,
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
