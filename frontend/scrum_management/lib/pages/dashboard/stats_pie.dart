import 'package:flutter/material.dart';
import 'package:scrum_management/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../providers/card_provider.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

class StatsPie extends StatelessWidget {
  final String dashboardName;

  const StatsPie({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, cardProvider, child) {
        double totalFinished = cardProvider
            .getCardStateCount(scrum_management.CardState.Listo)
            .toDouble();
        double totalPending =
            cardProvider.getTotalCardCount().toDouble() - totalFinished;

        Map<String, double> generalData = {
          'Completado': totalFinished,
          'Pendiente': totalPending,
        };

        double totalFinishedProyectos = cardProvider
            .getCardStateCountByCategory(
                scrum_management.CardCategory.Proyectos,
                scrum_management.CardState.Listo)
            .toDouble();
        double totalPendingProyectos = cardProvider
                .getCardCategoryCount(scrum_management.CardCategory.Proyectos)
                .toDouble() -
            totalFinishedProyectos;

        Map<String, double> proyectosData = {
          'Completado': totalFinishedProyectos,
          'Pendiente': totalPendingProyectos,
        };

        double totalFinishedRoadmap = cardProvider
            .getCardStateCountByCategory(scrum_management.CardCategory.Roadmap,
                scrum_management.CardState.Listo)
            .toDouble();
        double totalPendingRoadmap = cardProvider
                .getCardCategoryCount(scrum_management.CardCategory.Roadmap)
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
import 'package:scrum_management/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../providers/card_provider.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

class StatsPie extends StatelessWidget {
  final String dashboardName;

  const StatsPie({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, cardProvider, child) {
        List<scrum_management.Card> filteredCards =
            cardProvider.getCardsWithBacklogFalse();

        double totalFinished = cardProvider
            .getCardStateCountWithBacklogFalse(scrum_management.CardState.Listo)
            .toDouble();
        double totalPending = cardProvider
                .getCardStateCountWithBacklogFalse(
                    scrum_management.CardState.Listo)
                .toDouble() -
            totalFinished;

        Map<String, double> generalData = {
          'Completado': totalFinished,
          'Pendiente': totalPending,
        };

        double totalFinishedProyectos = cardProvider
            .getCardStateCountByCategoryWithBacklogFalse(
                scrum_management.CardCategory.Proyectos,
                scrum_management.CardState.Listo)
            .toDouble();
        double totalPendingProyectos = cardProvider
                .getCardCategoryCountWithBacklogFalse(
                    scrum_management.CardCategory.Proyectos)
                .toDouble() -
            totalFinishedProyectos;

        Map<String, double> proyectosData = {
          'Completado': totalFinishedProyectos,
          'Pendiente': totalPendingProyectos,
        };

        double totalFinishedRoadmap = cardProvider
            .getCardStateCountByCategoryWithBacklogFalse(
                scrum_management.CardCategory.Roadmap,
                scrum_management.CardState.Listo)
            .toDouble();
        double totalPendingRoadmap = cardProvider
                .getCardCategoryCountWithBacklogFalse(
                    scrum_management.CardCategory.Roadmap)
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