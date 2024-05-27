import 'package:epic_sync/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../providers/card_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class StatsPie extends StatelessWidget {
  final String dashboardName;

  const StatsPie({Key? key, required this.dashboardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, cardProvider, child) {
        List<ChartData> data = getData(cardProvider, dashboardName);

        return Container(
          height: 400,
          padding: const EdgeInsets.all(10),
          child: SfCircularChart(
            legend: Legend(
              position: LegendPosition.bottom,
              title: LegendTitle(
                text: 'Estados',
                textStyle: TextStyle(
                    fontSize: 18,
                    color: Provider.of<ThemeProvider>(context).textColor,
                    fontWeight: FontWeight.bold),
              ),
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
              textStyle: TextStyle(
                  color: Provider.of<ThemeProvider>(context).textColor,
                  fontSize: 16),
              isResponsive: false,
            ),
            series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                radius: '100%',
                dataSource: data,
                xValueMapper: (ChartData data, _) => data.label,
                yValueMapper: (ChartData data, _) => data.value,
                dataLabelSettings: const DataLabelSettings(
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.inside,
                  useSeriesColor: true,
                  showCumulativeValues: true,
                  showZeroValue: false,
                  textStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
                dataLabelMapper: (ChartData data, _) =>
                    '${(data.value / data.total * 100).toStringAsFixed(1)}%',
                enableTooltip: true,
              ),
            ],
            tooltipBehavior: TooltipBehavior(
              enable: true,
              tooltipPosition: TooltipPosition.pointer,
              duration: 100,
              color: Provider.of<ThemeProvider>(context).backgroundColor,
              format: 'point.x : point.y',
              textStyle: TextStyle(
                  color: Provider.of<ThemeProvider>(context).textColor,
                  fontSize: 16),
            ),
          ),
        );
      },
    );
  }

  List<ChartData> getData(CardProvider provider, String dashboardName) {
    List<ChartData> data = [];
    double total = provider.getTotalCardCount().toDouble();

    epic_sync.CardCategory category = (dashboardName == 'Proyectos')
        ? epic_sync.CardCategory.Proyectos
        : (dashboardName == 'Roadmap')
            ? epic_sync.CardCategory.Roadmap
            : epic_sync.CardCategory.UNKNOWN_C;

    var states = {
      'Listo': epic_sync.CardState.Listo,
      'Revisar': epic_sync.CardState.Revisar,
      'Pendiente': epic_sync.CardState.Pendiente,
      'Proceso': epic_sync.CardState.Proceso,
    };
    if (category != epic_sync.CardCategory.UNKNOWN_C) {
      states.forEach((key, value) {
        double count =
            provider.getCardStateCountByCategory(category, value).toDouble();
        if (count > 0) {
          data.add(ChartData(key, count, total));
        }
      });
    } else {
      states.forEach((key, value) {
        double count = provider.getCardStateCount(value).toDouble();
        if (count > 0) {
          data.add(ChartData(key, count, total));
        }
      });
    }

    return data;
  }
}

class ChartData {
  final String label;
  final double value;
  final double total;

  ChartData(this.label, this.value, this.total);
}
