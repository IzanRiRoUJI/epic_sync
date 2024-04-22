import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class CommentProvider with ChangeNotifier {
  List<epic_sync.Comment>? _comments;

  CommentProvider() {
    _comments = [
      epic_sync.Comment(
          id: Int64(1),
          idCard: Int64(1),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Este es un comentario de prueba',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(2),
          idCard: Int64(2),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Excelente trabajo!',
          parent: Int64(2)),
      epic_sync.Comment(
          id: Int64(3),
          idCard: Int64(3),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien necesita ayuda con esto?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(4),
          idCard: Int64(4),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Sí, puedo ayudarte. ¿Qué necesitas?',
          parent: Int64(3)),
      epic_sync.Comment(
          id: Int64(5),
          idCard: Int64(5),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content:
              'Gracias por ofrecerte. ¿Podrías revisar este punto específico?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(6),
          idCard: Int64(6),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Este error parece ser un problema importante',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(7),
          idCard: Int64(7),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Comenzaré a trabajar en esta tarea',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(8),
          idCard: Int64(8),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'He encontrado un problema en este punto',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(9),
          idCard: Int64(9),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Puedo ayudarte a solucionarlo?',
          parent: Int64(8)),
      epic_sync.Comment(
          id: Int64(10),
          idCard: Int64(10),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Sí, sería genial si pudieras ayudar',
          parent: Int64(9)),
      epic_sync.Comment(
          id: Int64(11),
          idCard: Int64(11),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien ha revisado esta historia de usuario?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(12),
          idCard: Int64(1),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Este error debe resolverse lo antes posible',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(13),
          idCard: Int64(13),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estoy trabajando en ello',
          parent: Int64(12)),
      epic_sync.Comment(
          id: Int64(14),
          idCard: Int64(14),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay algo más que necesitemos agregar a esta tarea?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(15),
          idCard: Int64(15),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Hecho! La tarea ha sido completada',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(16),
          idCard: Int64(16),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Este error no parece ser tan crítico',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(17),
          idCard: Int64(17),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: 'He comenzado a trabajar en el diseño',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(18),
          idCard: Int64(18),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Necesitas alguna ayuda con eso?',
          parent: Int64(17)),
      epic_sync.Comment(
          id: Int64(19),
          idCard: Int64(19),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien más ha revisado esta historia de usuario?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(20),
          idCard: Int64(20),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Sí, he revisado la historia de usuario y parece estar bien',
          parent: Int64(19)),
      epic_sync.Comment(
          id: Int64(21),
          idCard: Int64(21),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay algún progreso en la resolución de este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(22),
          idCard: Int64(22),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Bien hecho! La documentación ha sido completada',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(23),
          idCard: Int64(23),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Qué más necesitamos hacer para esta historia de usuario?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(24),
          idCard: Int64(24),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estoy investigando la causa de este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(25),
          idCard: Int64(25),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'La optimización ha sido realizada con éxito',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(26),
          idCard: Int64(26),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡La nueva funcionalidad ha sido implementada!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(27),
          idCard: Int64(27),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estoy revisando el código para mejorar su calidad',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(28),
          idCard: Int64(28),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Este error está afectando a múltiples usuarios',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(29),
          idCard: Int64(29),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Podemos solucionarlo rápidamente?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(30),
          idCard: Int64(30),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Sí, trabajaremos en ello de inmediato',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(31),
          idCard: Int64(21),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay alguna actualización sobre esta historia de usuario?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(32),
          idCard: Int64(22),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡El sistema de pagos está funcionando correctamente ahora!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(33),
          idCard: Int64(23),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Las nuevas funciones han sido implementadas con éxito!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(34),
          idCard: Int64(24),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estoy buscando la mejor manera de resolver este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(35),
          idCard: Int64(25),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay algo más que necesitemos agregar a esta tarea?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(36),
          idCard: Int64(26),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡La revisión de seguridad ha sido completada satisfactoriamente!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(37),
          idCard: Int64(27),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estamos investigando la causa de este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(38),
          idCard: Int64(27),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡El código ha sido refactorizado y mejorado!',
          parent: Int64(37)),
      epic_sync.Comment(
          id: Int64(39),
          idCard: Int64(28),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay algún avance en la resolución de este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(40),
          idCard: Int64(29),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡La mejora de rendimiento ha sido exitosa!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(41),
          idCard: Int64(30),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien puede ayudar con este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(42),
          idCard: Int64(30),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Sí, estoy disponible para ayudar',
          parent: Int64(41)),
      epic_sync.Comment(
          id: Int64(43),
          idCard: Int64(30),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Gracias por tu ayuda!',
          parent: Int64(42)),
      epic_sync.Comment(
          id: Int64(44),
          idCard: Int64(31),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡El proceso de exportación de datos ahora es más eficiente!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(45),
          idCard: Int64(32),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡La refactorización de código ha mejorado mucho la legibilidad!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(46),
          idCard: Int64(33),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estamos cerca de resolver este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(47),
          idCard: Int64(33),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡El proceso de validación de formularios ahora es más sólido!',
          parent: Int64(46)),
      epic_sync.Comment(
          id: Int64(48),
          idCard: Int64(34),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡El sistema está funcionando sin problemas ahora!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(49),
          idCard: Int64(35),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay alguna tarea pendiente que necesite atención?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(50),
          idCard: Int64(36),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              'Estoy revisando la documentación para asegurarme de que esté completa',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(51),
          idCard: Int64(37),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¿Alguien puede proporcionar una actualización sobre este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(52),
          idCard: Int64(37),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡El problema ha sido resuelto con éxito!',
          parent: Int64(51)),
      epic_sync.Comment(
          id: Int64(53),
          idCard: Int64(38),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estoy investigando un enfoque para resolver este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(54),
          idCard: Int64(39),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡La nueva funcionalidad ha sido bien recibida por los usuarios!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(55),
          idCard: Int64(40),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estamos trabajando en una solución para este error',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(56),
          idCard: Int64(40),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Puedo ayudar en algo?',
          parent: Int64(55)),
      epic_sync.Comment(
          id: Int64(57),
          idCard: Int64(40),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Claro! Podrías revisar la implementación actual',
          parent: Int64(56)),
      epic_sync.Comment(
          id: Int64(58),
          idCard: Int64(41),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡La refactorización del código ha mejorado enormemente su mantenibilidad!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(59),
          idCard: Int64(42),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay alguna actualización sobre este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(60),
          idCard: Int64(42),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estamos en proceso de resolverlo',
          parent: Int64(59)),
      epic_sync.Comment(
          id: Int64(61),
          idCard: Int64(43),
          idUser: Int64(1),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien puede echar un vistazo rápido a este error?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(62),
          idCard: Int64(43),
          idUser: Int64(2),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡Seguro! Voy a revisarlo ahora mismo',
          parent: Int64(61)),
      epic_sync.Comment(
          id: Int64(63),
          idCard: Int64(44),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡La exportación de datos se ha vuelto mucho más rápida!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(64),
          idCard: Int64(45),
          idUser: Int64(4),
          date: '2024-04-11T00:00:00.000Z',
          content: 'Estamos buscando formas de mejorar el rendimiento',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(65),
          idCard: Int64(46),
          idUser: Int64(5),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Hay alguna tarea urgente que necesite atención?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(66),
          idCard: Int64(47),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡El código ha sido refactorizado con éxito!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(67),
          idCard: Int64(48),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content:
              '¡El sistema está funcionando sin problemas después de las últimas actualizaciones!',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(68),
          idCard: Int64(49),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¿Alguien necesita ayuda con algún problema?',
          parent: Int64(0)),
      epic_sync.Comment(
          id: Int64(69),
          idCard: Int64(50),
          idUser: Int64(3),
          date: '2024-04-11T00:00:00.000Z',
          content: '¡La documentación está completa y lista para su revisión!',
          parent: Int64(0)),
    ];
  }

  List<epic_sync.Comment>? get comments => _comments;

  void addComment(epic_sync.Comment comment) {
    _comments!.add(comment);
    notifyListeners();
  }

  void removeComment(epic_sync.Comment comment) {
    _comments!.remove(comment);
    notifyListeners();
  }

  void updateComment(epic_sync.Comment comment) {
    final index = _comments!.indexWhere((element) => element.id == comment.id);
    _comments![index] = comment;
    notifyListeners();
  }

  void replyComment(epic_sync.Comment comment) {
    _comments!.add(comment);
    notifyListeners();
  }

  void deleteComment(epic_sync.Comment comment) {
    _comments!.remove(comment);
    notifyListeners();
  }

  List<epic_sync.Comment> getCommentsByCardId(Int64 idCard) {
    return _comments!.where((element) => element.idCard == idCard).toList();
  }

  List<epic_sync.Comment> getParentCommentsByCardId(Int64 idCard) {
    return _comments!
        .where(
            (comment) => comment.idCard == idCard && comment.parent == Int64(0))
        .toList();
  }

  List<epic_sync.Comment> getCommentsByParentId(Int64 idParent) {
    return _comments!.where((element) => element.parent == idParent).toList();
  }

  int getTotalCommentCount() {
    return _comments!.length;
  }

  int getCommentCountByCardId(Int64 idCard) {
    return _comments!.where((element) => element.idCard == idCard).length;
  }

  int getCommentCountByParentId(Int64 idParent) {
    return _comments!.where((element) => element.parent == idParent).length;
  }
}
