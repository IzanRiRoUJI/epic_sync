import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

class LabelProvider with ChangeNotifier {
  List<scrum_management.Label>? _labels;

  LabelProvider() {
    _labels = [
      scrum_management.Label(id: Int64(1), name: 'Bug'),
      scrum_management.Label(id: Int64(2), name: 'Mejora'),
      scrum_management.Label(id: Int64(3), name: 'Investigación'),
      scrum_management.Label(id: Int64(4), name: 'Diseño'),
      scrum_management.Label(id: Int64(5), name: 'Documentación'),
      scrum_management.Label(id: Int64(6), name: 'Implementación'),
      scrum_management.Label(id: Int64(7), name: 'Optimización'),
      scrum_management.Label(id: Int64(8), name: 'Revisión de código'),
      scrum_management.Label(id: Int64(9), name: 'Prueba'),
      scrum_management.Label(id: Int64(10), name: 'Despliegue'),
      scrum_management.Label(id: Int64(11), name: 'Seguridad'),
      scrum_management.Label(id: Int64(12), name: 'Prioridad alta'),
      scrum_management.Label(id: Int64(13), name: 'Prioridad media'),
      scrum_management.Label(id: Int64(14), name: 'Prioridad baja'),
      scrum_management.Label(id: Int64(15), name: 'Urgente'),
      scrum_management.Label(id: Int64(16), name: 'Planificado'),
      scrum_management.Label(id: Int64(17), name: 'En progreso'),
      scrum_management.Label(id: Int64(18), name: 'Revisión'),
      scrum_management.Label(id: Int64(19), name: 'Completado'),
      scrum_management.Label(id: Int64(20), name: 'Pendiente')
    ];
  }

  List<scrum_management.Label>? get labels => _labels;

  scrum_management.Label getLabel(int? id) {
    scrum_management.Label label =
        scrum_management.Label(id: Int64(0), name: 'Unknown');
    for (var element in _labels!) {
      if (element.id.toString() == id.toString()) {
        label = element;
      }
    }
    return label;
  }

  void addLabel(scrum_management.Label label) {
    _labels!.add(label);
    notifyListeners();
  }

  void deleteLabel(scrum_management.Label label) {
    _labels!.remove(label);
    notifyListeners();
  }

  void updateLabel(scrum_management.Label label) {
    _labels!.removeWhere((element) => element.name == label.name);
    _labels!.add(label);
    notifyListeners();
  }
}
