import 'package:flutter/material.dart';
import 'package:epic_sync/providers/globals_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/drawer/drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsBoard extends StatefulWidget {
  const StatsBoard({Key? key}) : super(key: key);

  @override
  StatsBoardState createState() => StatsBoardState();
}

class StatsBoardState extends State<StatsBoard> {
  final ScrollController _scrollController = ScrollController();
  String selectedYear = '2023'; // Año inicial seleccionado
  List<String> years = ['2023', '2024']; // Opciones de años

  List<TaskData> data = [
    // Datos de 2023
    TaskData('Enero', 15, 10, '2023'),
    TaskData('Febrero', 14, 14, '2023'),
    TaskData('Marzo', 20, 18, '2023'),
    TaskData('Abril', 13, 15, '2023'),
    TaskData('Mayo', 16, 16, '2023'),
    TaskData('Junio', 18, 17, '2023'),
    TaskData('Julio', 20, 20, '2023'),
    TaskData('Agosto', 12, 15, '2023'),
    TaskData('Septiembre', 15, 13, '2023'),
    TaskData('Octubre', 18, 19, '2023'),
    TaskData('Noviembre', 16, 18, '2023'),
    TaskData('Diciembre', 22, 20, '2023'),
    // Datos de 2024
    TaskData('Enero', 15, 14, '2024'),
    TaskData('Febrero', 13, 15, '2024'),
    TaskData('Marzo', 18, 16, '2024'),
    TaskData('Abril', 20, 18, '2024'),
  ];

  final List<TaskTypeData> datatype = [
    // Datos de 2023
    TaskTypeData('Enero', 7, 5, 3, '2023'),
    TaskTypeData('Febrero', 7, 3, 4, '2023'),
    TaskTypeData('Marzo', 10, 5, 5, '2023'),
    TaskTypeData('Abril', 5, 5, 3, '2023'),
    TaskTypeData('Mayo', 6, 7, 3, '2023'),
    TaskTypeData('Junio', 9, 5, 4, '2023'),
    TaskTypeData('Julio', 10, 6, 4, '2023'),
    TaskTypeData('Agosto', 5, 4, 3, '2023'),
    TaskTypeData('Septiembre', 8, 3, 4, '2023'),
    TaskTypeData('Octubre', 9, 6, 3, '2023'),
    TaskTypeData('Noviembre', 8, 5, 3, '2023'),
    TaskTypeData('Diciembre', 11, 7, 4, '2023'),
    // Datos de 2024
    TaskTypeData('Enero', 7, 5, 3, '2024'),
    TaskTypeData('Febrero', 7, 3, 3, '2024'),
    TaskTypeData('Marzo', 9, 5, 4, '2024'),
    TaskTypeData('Abril', 10, 5, 5, '2024'),
  ];

  @override
  Widget build(BuildContext context) {
    List<TaskData> filteredTaskData =
        data.where((task) => task.year == selectedYear).toList();
    List<TaskTypeData> filteredTypeData =
        datatype.where((type) => type.year == selectedYear).toList();

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
                    minHeight: MediaQuery.of(context).size.height),
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
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 400,
                                child: SfCartesianChart(
                                  title: ChartTitle(
                                      text:
                                          'Tareas Añadidas vs Completadas por Mes',
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Provider.of<ThemeProvider>(context)
                                                .textColor,
                                      ),
                                      alignment: ChartAlignment.near),
                                  primaryXAxis: CategoryAxis(),
                                  legend: Legend(isVisible: true),
                                  tooltipBehavior:
                                      TooltipBehavior(enable: true),
                                  series: <ChartSeries>[
                                    LineSeries<TaskData, String>(
                                      dataSource: filteredTaskData,
                                      color: Provider.of<ThemeProvider>(context)
                                          .accentColor,
                                      xValueMapper: (TaskData tasks, _) =>
                                          tasks.month,
                                      yValueMapper: (TaskData tasks, _) =>
                                          tasks.added,
                                      name: 'Añadidas',
                                    ),
                                    LineSeries<TaskData, String>(
                                      dataSource: filteredTaskData,
                                      color: Provider.of<ThemeProvider>(context)
                                          .primaryColor,
                                      xValueMapper: (TaskData tasks, _) =>
                                          tasks.month,
                                      yValueMapper: (TaskData tasks, _) =>
                                          tasks.completed,
                                      name: 'Completadas',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height:
                                    400, // Define una altura fija para el gráfico
                                child: SfCartesianChart(
                                  title: ChartTitle(
                                      text: 'Tipos de Tarjetas por Mes',
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Provider.of<ThemeProvider>(
                                                  context)
                                              .textColor),
                                      alignment: ChartAlignment.near),
                                  primaryXAxis: CategoryAxis(),
                                  legend: Legend(isVisible: true),
                                  tooltipBehavior:
                                      TooltipBehavior(enable: true),
                                  series: <ChartSeries>[
                                    ColumnSeries<TaskTypeData, String>(
                                      dataSource: filteredTypeData,
                                      xValueMapper: (TaskTypeData types, _) =>
                                          types.month,
                                      yValueMapper: (TaskTypeData types, _) =>
                                          types.stories,
                                      name: 'Historia',
                                      color: Colors.green,
                                    ),
                                    ColumnSeries<TaskTypeData, String>(
                                      dataSource: filteredTypeData,
                                      xValueMapper: (TaskTypeData types, _) =>
                                          types.month,
                                      yValueMapper: (TaskTypeData types, _) =>
                                          types.bugs,
                                      name: 'Error',
                                      color: Colors.red,
                                    ),
                                    ColumnSeries<TaskTypeData, String>(
                                      dataSource: filteredTypeData,
                                      xValueMapper: (TaskTypeData types, _) =>
                                          types.month,
                                      yValueMapper: (TaskTypeData types, _) =>
                                          types.tasks,
                                      name: 'Tarea',
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Ver año: ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Provider.of<ThemeProvider>(context)
                                        .textColor),
                              ),
                              Container(
                                padding: const EdgeInsets.all(30),
                                child: DropdownButton<String>(
                                  value: selectedYear,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedYear = newValue!;
                                    });
                                  },
                                  items: years.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Provider.of<ThemeProvider>(
                                                    context)
                                                .textColor),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
}

class TaskData {
  final String month;
  final int added;
  final int completed;
  final String year;

  TaskData(this.month, this.added, this.completed, this.year);
}

class TaskTypeData {
  final String month;
  final int stories;
  final int bugs;
  final int tasks;
  final String year;

  TaskTypeData(this.month, this.stories, this.bugs, this.tasks, this.year);
}
