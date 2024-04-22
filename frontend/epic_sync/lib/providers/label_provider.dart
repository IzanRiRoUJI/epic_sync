import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class LabelProvider with ChangeNotifier {
  List<epic_sync.Label>? _labels;

  LabelProvider() {
    _labels = [
      epic_sync.Label(id: Int64(1), name: 'Bug'),
      epic_sync.Label(id: Int64(2), name: 'Mejora'),
      epic_sync.Label(id: Int64(3), name: 'Investigación'),
      epic_sync.Label(id: Int64(4), name: 'Diseño'),
      epic_sync.Label(id: Int64(5), name: 'Documentación'),
      epic_sync.Label(id: Int64(6), name: 'Implementación'),
      epic_sync.Label(id: Int64(7), name: 'Optimización'),
      epic_sync.Label(id: Int64(8), name: 'Revisión de código'),
      epic_sync.Label(id: Int64(9), name: 'Prueba'),
      epic_sync.Label(id: Int64(10), name: 'Despliegue'),
      epic_sync.Label(id: Int64(11), name: 'Seguridad'),
      epic_sync.Label(id: Int64(12), name: 'Prioridad alta'),
      epic_sync.Label(id: Int64(13), name: 'Prioridad media'),
      epic_sync.Label(id: Int64(14), name: 'Prioridad baja'),
      epic_sync.Label(id: Int64(15), name: 'Urgente'),
      epic_sync.Label(id: Int64(16), name: 'Planificado'),
      epic_sync.Label(id: Int64(17), name: 'En progreso'),
      epic_sync.Label(id: Int64(18), name: 'Revisión'),
      epic_sync.Label(id: Int64(19), name: 'Completado'),
      epic_sync.Label(id: Int64(20), name: 'Pendiente')
    ];
  }

  List<epic_sync.Label>? get labels => _labels;

  epic_sync.Label getLabel(int? id) {
    epic_sync.Label label = epic_sync.Label(id: Int64(0), name: 'Unknown');
    for (var element in _labels!) {
      if (element.id.toString() == id.toString()) {
        label = element;
      }
    }
    return label;
  }

  void addLabel(epic_sync.Label label) {
    _labels!.add(label);
    notifyListeners();
  }

  void deleteLabel(epic_sync.Label label) {
    _labels!.remove(label);
    notifyListeners();
  }

  void updateLabel(epic_sync.Label label) {
    _labels!.removeWhere((element) => element.name == label.name);
    _labels!.add(label);
    notifyListeners();
  }
}
