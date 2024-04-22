import 'package:flutter/material.dart';
import 'package:scrum_management/providers/globals_provider.dart';
import 'package:scrum_management/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/drawer/drawer.dart';
import 'package:fl_chart/fl_chart.dart';

class StatsBoard extends StatefulWidget {
  const StatsBoard({Key? key}) : super(key: key);

  @override
  StatsBoardState createState() => StatsBoardState();
}

class StatsBoardState extends State<StatsBoard> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: Provider.of<GlobalStateInfo>(context).getLeftPadding),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                color: Provider.of<ThemeProvider>(context).backgroundColor,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Estadísticas Detalladas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Provider.of<ThemeProvider>(context).textColor,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        _buildCreationDateChart(),
                        const SizedBox(height: 20),
                        _buildTypeDistributionChart(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        _buildPriorityChart(),
                        const SizedBox(height: 20),
                        _buildStateDistributionChart(),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          const CollapsingNavigationDrawer(),
        ],
      ),
    );
  }

  Widget _buildCreationDateChart() {
    // Simulando datos para el gráfico de barras
    List<FlSpot> data = [
      const FlSpot(1, 5),
      const FlSpot(2, 10),
      const FlSpot(3, 15),
      const FlSpot(4, 20),
    ];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.4,
          minWidth: MediaQuery.of(context).size.width * 0.4,
          maxHeight: MediaQuery.of(context).size.height * 0.4,
          maxWidth: MediaQuery.of(context).size.width * 0.4,
        ),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              bottomTitles: SideTitles(
                showTitles: true,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 1:
                      return 'Ene';
                    case 2:
                      return 'Feb';
                    case 3:
                      return 'Mar';
                    case 4:
                      return 'Abr';
                  }
                  return '';
                },
              ),
            ),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            lineBarsData: [
              LineChartBarData(
                spots: data,
                isCurved: true,
                colors: [Colors.blue],
                barWidth: 4,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTypeDistributionChart() {
    // Simulando datos para el gráfico circular
    List<PieChartSectionData> pieChartSections = [
      PieChartSectionData(
        value: 30,
        color: Colors.red,
        title: 'Feature',
        radius: MediaQuery.of(context).size.height * 0.15,
      ),
      PieChartSectionData(
        value: 20,
        color: Colors.green,
        title: 'Bug',
        radius: MediaQuery.of(context).size.height * 0.15,
      ),
      PieChartSectionData(
        value: 50,
        color: Colors.blue,
        title: 'Task',
        radius: MediaQuery.of(context).size.height * 0.15,
      ),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      child: PieChart(
        PieChartData(
          sections: pieChartSections,
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
        ),
      ),
    );
  }

  Widget _buildPriorityChart() {
    // Simulando datos para el gráfico de barras
    List<BarChartGroupData> barGroups = [
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            y: 5,
            colors: [Colors.red], // Change 'color' to 'colors'
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            y: 10,
            colors: [Colors.yellow], // Change 'color' to 'colors'
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            y: 15,
            colors: [Colors.green], // Change 'color' to 'colors'
          ),
        ],
      ),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          groupsSpace: 20,
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: barGroups,
        ),
      ),
    );
  }

  Widget _buildStateDistributionChart() {
    // Simulando datos para el gráfico circular
    List<PieChartSectionData> pieChartSections = [
      PieChartSectionData(
        value: 40,
        color: Colors.blue,
        title: 'En progreso',
        radius: MediaQuery.of(context).size.height * 0.15,
      ),
      PieChartSectionData(
        value: 60,
        color: Colors.green,
        title: 'Completado',
        radius: MediaQuery.of(context).size.height * 0.15,
      ),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      child: PieChart(
        PieChartData(
          sections: pieChartSections,
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
        ),
      ),
    );
  }
}
