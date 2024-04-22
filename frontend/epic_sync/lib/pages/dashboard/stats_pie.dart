import 'package:flutter/material.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../providers/card_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class StatsPie extends StatelessWidget {
  final String dashboardName;

  const StatsPie({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, cardProvider, child) {
        double totalFinished = cardProvider
            .getCardStateCount(epic_sync.CardState.Listo)
            .toDouble();
        double totalPending =
            cardProvider.getTotalCardCount().toDouble() - totalFinished;

        Map<String, double> generalData = {
          'Completado': totalFinished,
          'Pendiente': totalPending,
        };

        double totalFinishedProyectos = cardProvider
            .getCardStateCountByCategory(
                epic_sync.CardCategory.Proyectos, epic_sync.CardState.Listo)
            .toDouble();
        double totalPendingProyectos = cardProvider
                .getCardCategoryCount(epic_sync.CardCategory.Proyectos)
                .toDouble() -
            totalFinishedProyectos;

        Map<String, double> proyectosData = {
          'Completado': totalFinishedProyectos,
          'Pendiente': totalPendingProyectos,
        };

        double totalFinishedRoadmap = cardProvider
            .getCardStateCountByCategory(
                epic_sync.CardCategory.Roadmap, epic_sync.CardState.Listo)
            .toDouble();
        double totalPendingRoadmap = cardProvider
                .getCardCategoryCount(epic_sync.CardCategory.Roadmap)
                .toDouble() -
            totalFinishedRoadmap;

        Map<String, double> roadmapData = {
          'Completado': totalFinishedRoadmap,
          'Pendiente': totalPendingRoadmap
        };

        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Provider.of<ThemeProvider>(context).accentColor,
              width: 1.0,
            ),
          ),
          child: PieChart(
            chartRadius: 250,
            legendOptions: const LegendOptions(
              showLegends: false,
            ),
            dataMap: (dashboardName == 'Proyectos')
                ? proyectosData
                : (dashboardName == 'Roadmap')
                    ? roadmapData
                    : generalData,
            colorList: [
              Provider.of<ThemeProvider>(context).accentColor,
              Colors.transparent,
            ],
            chartType: ChartType.disc,
            degreeOptions: const DegreeOptions(
              initialAngle: 45,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: false,
              showChartValuesInPercentage: true,
              chartValueStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Provider.of<ThemeProvider>(context).backgroundColor,
              ),
            ),
            baseChartColor: Colors.transparent,
          ),
        );
      },
    );
  }
}
/* 

import 'package:flutter/material.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../providers/card_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart'
    as epic_sync;

class StatsPie extends StatelessWidget {
  final String dashboardName;

  const StatsPie({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, cardProvider, child) {
        List<epic_sync.Card> filteredCards =
            cardProvider.getCardsWithBacklogFalse();

        double totalFinished = cardProvider
            .getCardStateCountWithBacklogFalse(epic_sync.CardState.Listo)
            .toDouble();
        double totalPending = cardProvider
                .getCardStateCountWithBacklogFalse(
                    epic_sync.CardState.Listo)
                .toDouble() -
            totalFinished;

        Map<String, double> generalData = {
          'Completado': totalFinished,
          'Pendiente': totalPending,
        };

        double totalFinishedProyectos = cardProvider
            .getCardStateCountByCategoryWithBacklogFalse(
                epic_sync.CardCategory.Proyectos,
                epic_sync.CardState.Listo)
            .toDouble();
        double totalPendingProyectos = cardProvider
                .getCardCategoryCountWithBacklogFalse(
                    epic_sync.CardCategory.Proyectos)
                .toDouble() -
            totalFinishedProyectos;

        Map<String, double> proyectosData = {
          'Completado': totalFinishedProyectos,
          'Pendiente': totalPendingProyectos,
        };

        double totalFinishedRoadmap = cardProvider
            .getCardStateCountByCategoryWithBacklogFalse(
                epic_sync.CardCategory.Roadmap,
                epic_sync.CardState.Listo)
            .toDouble();
        double totalPendingRoadmap = cardProvider
                .getCardCategoryCountWithBacklogFalse(
                    epic_sync.CardCategory.Roadmap)
                .toDouble() -
            totalFinishedRoadmap;

        Map<String, double> roadmapData = {
          'Completado': totalFinishedRoadmap,
          'Pendiente': totalPendingRoadmap
        };

        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Provider.of<ThemeProvider>(context).accentColor,
              width: 1.0,
            ),
          ),
          child: PieChart(
            chartRadius: 250,
            legendOptions: const LegendOptions(
              showLegends: false,
            ),
            dataMap: (dashboardName == 'Proyectos')
                ? proyectosData
                : (dashboardName == 'Roadmap')
                    ? roadmapData
                    : generalData,
            colorList: [
              Provider.of<ThemeProvider>(context).accentColor,
              Colors.transparent,
            ],
            chartType: ChartType.disc,
            degreeOptions: const DegreeOptions(
              initialAngle: 45,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: false,
              showChartValuesInPercentage: true,
              chartValueStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Provider.of<ThemeProvider>(context).backgroundColor,
              ),
            ),
            baseChartColor: Colors.transparent,
          ),
        );
      },
    );
  }
}
 */