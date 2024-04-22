import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'package:scrum_management/providers/label_provider.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

class CardProvider with ChangeNotifier {
  List<scrum_management.Card>? _cards;
  LabelProvider labelProvider = LabelProvider();

  CardProvider() {
    _cards = [
      scrum_management.Card(
        id: Int64(1),
        idUser: Int64(1),
        title: 'Configuración del servidor de base de datos',
        epic: 'Configuración de Infraestructura',
        description:
            'Configurar el servidor de base de datos para optimizar el rendimiento del sistema',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-06-15T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(10),
          labelProvider.getLabel(16),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(2),
        idUser: Int64(1),
        title: 'Implementación de sistema de autenticación',
        epic: 'Seguridad de la Aplicación',
        description:
            'Implementar un sistema de autenticación robusto para garantizar la seguridad de la aplicación',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-08-22T00:00:00.000Z",
        storypoints: 3.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(3),
        idUser: Int64(1),
        title: 'Corrección de errores de inicio de sesión',
        epic: 'Inicio de Sesión',
        description:
            'Resolver errores relacionados con el proceso de inicio de sesión en la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-04-30T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(4),
        idUser: Int64(1),
        title: 'Despliegue de actualizaciones de software',
        epic: 'Despliegue de Software',
        description:
            'Desplegar las últimas actualizaciones de software en los servidores de producción',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Listo,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-03-17T00:00:00.000Z",
        storypoints: 1.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(5),
        idUser: Int64(1),
        title: 'Pruebas de integración del módulo de pagos',
        epic: 'Integración de Pagos',
        description:
            'Realizar pruebas de integración del módulo de pagos con los sistemas existentes',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-05T00:00:00.000Z",
        storypoints: 2.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(14),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(6),
        idUser: Int64(1),
        title: 'Desarrollo de panel de administración',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar un panel de administración para gestionar usuarios y configuraciones',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-07-10T00:00:00.000Z",
        storypoints: 4.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(7),
        idUser: Int64(1),
        title: 'Optimización de consultas SQL',
        epic: 'Optimización de Base de Datos',
        description:
            'Optimizar las consultas SQL para mejorar el rendimiento de las consultas',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-04-28T00:00:00.000Z",
        storypoints: 2.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(14),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(8),
        idUser: Int64(1),
        title: 'Revisión de código de funciones críticas',
        epic: 'Revisión de Código',
        description:
            'Realizar una revisión exhaustiva del código de las funciones críticas del sistema',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-08-03T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(14),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(9),
        idUser: Int64(1),
        title: 'Actualización de documentación de API',
        epic: 'Documentación de API',
        description:
            'Actualizar la documentación de la API para reflejar los cambios recientes en la plataforma',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-05-12T00:00:00.000Z",
        storypoints: 3.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(10),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(10),
        idUser: Int64(1),
        title: 'Solución de errores en proceso de registro',
        epic: 'Registro de Usuarios',
        description:
            'Identificar y corregir errores en el proceso de registro de nuevos usuarios',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-06-20T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(14),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(11),
        idUser: Int64(1),
        title: 'Diseño de interfaz de usuario para módulo de ventas',
        epic: 'Diseño de UI',
        description:
            'Diseñar la interfaz de usuario para el nuevo módulo de ventas de la plataforma',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Listo,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-09-05T00:00:00.000Z",
        storypoints: 1.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(12),
        idUser: Int64(1),
        title: 'Implementación de sistema de notificaciones',
        epic: 'Notificaciones',
        description:
            'Implementar un sistema de notificaciones para informar a los usuarios sobre eventos importantes',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-07-15T00:00:00.000Z",
        storypoints: 4.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(13),
        idUser: Int64(1),
        title: 'Corrección de errores en proceso de pago',
        epic: 'Proceso de Pago',
        description:
            'Identificar y corregir errores en el proceso de pago de la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-08-20T00:00:00.000Z",
        storypoints: 2.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(16),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(14),
        idUser: Int64(1),
        title: 'Revisión de código para cumplimiento de estándares',
        epic: 'Revisión de Código',
        description:
            'Revisar el código para garantizar el cumplimiento de los estándares de codificación',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-10T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(14),
          labelProvider.getLabel(17),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(15),
        idUser: Int64(1),
        title: 'Despliegue de actualizaciones de seguridad',
        epic: 'Seguridad de la Aplicación',
        description:
            'Desplegar actualizaciones de seguridad para proteger la plataforma contra amenazas conocidas',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-08-02T00:00:00.000Z",
        storypoints: 3.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(15),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(16),
        idUser: Int64(2),
        title: 'Corrección de errores en proceso de envío de correos',
        epic: 'Envío de Correos',
        description:
            'Identificar y corregir errores en el proceso de envío de correos electrónicos automáticos',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-07-28T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(2),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(17),
        idUser: Int64(2),
        title: 'Mejora de rendimiento de consultas de base de datos',
        epic: 'Optimización de Base de Datos',
        description:
            'Optimizar el rendimiento de las consultas de base de datos para reducir el tiempo de respuesta',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Listo,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-10-12T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(14),
          labelProvider.getLabel(7),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(18),
        idUser: Int64(2),
        title: 'Desarrollo de nuevas funcionalidades para módulo de inventario',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar nuevas funcionalidades para el módulo de inventario de la plataforma',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-06-20T00:00:00.000Z",
        storypoints: 4.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(6),
          labelProvider.getLabel(5),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(19),
        idUser: Int64(2),
        title: 'Solución de errores en proceso de exportación de datos',
        epic: 'Exportación de Datos',
        description:
            'Identificar y corregir errores en el proceso de exportación de datos de la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-11-08T00:00:00.000Z",
        storypoints: 2.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(2),
          labelProvider.getLabel(3),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(20),
        idUser: Int64(2),
        title: 'Refactorización de código para mejorar mantenibilidad',
        epic: 'Refactorización de Código',
        description:
            'Refactorizar el código existente para mejorar su mantenibilidad y escalabilidad',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-15T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(8),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(21),
        idUser: Int64(2),
        title: 'Desarrollo de sistema de gestión de tareas internas',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar un sistema de gestión de tareas internas para mejorar la eficiencia operativa',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-08-06T00:00:00.000Z",
        storypoints: 3.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(6),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(22),
        idUser: Int64(2),
        title: 'Corrección de errores en proceso de registro de eventos',
        epic: 'Registro de Eventos',
        description:
            'Identificar y corregir errores en el proceso de registro de eventos de la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-20T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(5),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(23),
        idUser: Int64(2),
        title: 'Despliegue de actualizaciones de software',
        epic: 'Despliegue de Software',
        description:
            'Desplegar las últimas actualizaciones de software en los servidores de producción',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Listo,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-11-14T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(3),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(24),
        idUser: Int64(2),
        title: 'Desarrollo de módulo de generación de informes',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar un módulo de generación de informes para proporcionar datos analíticos a los usuarios',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-08-30T00:00:00.000Z",
        storypoints: 4.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(25),
        idUser: Int64(2),
        title: 'Corrección de errores en proceso de validación de formularios',
        epic: 'Validación de Formularios',
        description:
            'Identificar y corregir errores en el proceso de validación de formularios de la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-09-05T00:00:00.000Z",
        storypoints: 3.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(14),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(26),
        idUser: Int64(2),
        title: 'Tarea de documentación de código',
        epic: 'Documentación de Código',
        description:
            'Documentar el código para facilitar su comprensión y mantenimiento en el futuro',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Baja,
        state: scrum_management.CardState.Listo,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-10-28T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(14),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(27),
        idUser: Int64(2),
        title: 'Desarrollo de sistema de gestión de contenido',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar un sistema de gestión de contenido para administrar el contenido multimedia de la plataforma',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-11-01T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(10),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(28),
        idUser: Int64(3),
        title: 'Corrección de errores en proceso de autenticación',
        epic: 'Autenticación',
        description:
            'Identificar y corregir errores en el proceso de autenticación de usuarios en la plataforma',
        type: scrum_management.CardType.Error,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-15T00:00:00.000Z",
        storypoints: 2.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(14),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(29),
        idUser: Int64(3),
        title: 'Optimización de consultas SQL',
        epic: 'Optimización de Base de Datos',
        description:
            'Optimizar las consultas SQL para mejorar el rendimiento de la plataforma',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-07-22T00:00:00.000Z",
        storypoints: 2.0,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(1),
          labelProvider.getLabel(16),
          labelProvider.getLabel(18),
        ],
      ),
      scrum_management.Card(
        id: Int64(30),
        idUser: Int64(3),
        title: 'Desarrollo de módulo de gestión de proyectos',
        epic: 'Desarrollo de Aplicación',
        description:
            'Desarrollar un módulo de gestión de proyectos para organizar y monitorear el progreso de los proyectos internos',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Revisar,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-09-30T00:00:00.000Z",
        storypoints: 3.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(15),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(31),
        idUser: Int64(3),
        title: 'Configuración de servidor de correo electrónico',
        epic: 'Infraestructura de Comunicaciones',
        description:
            'Configurar el servidor de correo electrónico para gestionar la comunicación interna y externa de la empresa',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Media,
        state: scrum_management.CardState.Pendiente,
        backlog: scrum_management.CardBacklog.True,
        datecreated: "2024-08-14T00:00:00.000Z",
        storypoints: 1.5,
        category: scrum_management.CardCategory.Proyectos,
        labels: [
          labelProvider.getLabel(9),
          labelProvider.getLabel(16),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
        id: Int64(32),
        idUser: Int64(3),
        title: 'Desarrollo de sistema de gestión de empleados',
        epic: 'Gestión de Recursos Humanos',
        description:
            'Desarrollar un sistema de gestión de empleados para administrar el personal de la empresa',
        type: scrum_management.CardType.Tarea,
        priority: scrum_management.CardPriority.Alta,
        state: scrum_management.CardState.Proceso,
        backlog: scrum_management.CardBacklog.False,
        datecreated: "2024-09-03T00:00:00.000Z",
        storypoints: 3.0,
        category: scrum_management.CardCategory.Roadmap,
        labels: [
          labelProvider.getLabel(11),
          labelProvider.getLabel(14),
          labelProvider.getLabel(17),
        ],
      ),
      scrum_management.Card(
          id: Int64(33),
          idUser: Int64(3),
          title: 'Corrección de errores en proceso de facturación',
          epic: 'Facturación',
          description:
              'Identificar y corregir errores en el proceso de facturación de la empresa',
          type: scrum_management.CardType.Error,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Revisar,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-09-20T00:00:00.000Z",
          storypoints: 2.0,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(15),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(34),
          idUser: Int64(3),
          title: 'Despliegue de actualizaciones de software',
          epic: 'Despliegue de Software',
          description:
              'Desplegar las últimas actualizaciones de software en los servidores de producción',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Baja,
          state: scrum_management.CardState.Listo,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-11-05T00:00:00.000Z",
          storypoints: 1.0,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(1),
            labelProvider.getLabel(16),
            labelProvider.getLabel(18),
          ]),
      scrum_management.Card(
          id: Int64(35),
          idUser: Int64(3),
          title: 'Pruebas de rendimiento del servidor web',
          epic: 'Rendimiento de Servidor',
          description:
              'Realizar pruebas de rendimiento del servidor web para garantizar una experiencia fluida para los usuarios',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-10-18T00:00:00.000Z",
          storypoints: 2.5,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(14),
            labelProvider.getLabel(15),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(36),
          idUser: Int64(3),
          title: 'Desarrollo de módulo de gestión de clientes',
          epic: 'Gestión de Clientes',
          description:
              'Desarrollar un módulo de gestión de clientes para administrar la relación con los clientes de la empresa',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Pendiente,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-08-22T00:00:00.000Z",
          storypoints: 4.0,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(6),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(37),
          idUser: Int64(3),
          title: 'Optimización de consultas SQL',
          epic: 'Optimización de Base de Datos',
          description:
              'Optimizar las consultas SQL para mejorar el rendimiento de la plataforma',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Pendiente,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-09-10T00:00:00.000Z",
          storypoints: 2.5,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(1),
            labelProvider.getLabel(16),
            labelProvider.getLabel(18),
          ]),
      scrum_management.Card(
          id: Int64(38),
          idUser: Int64(4),
          title: 'Revisión de código de funcionalidades críticas',
          epic: 'Revisión de Código',
          description:
              'Realizar una revisión exhaustiva del código de las funcionalidades críticas de la plataforma',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Baja,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-08-14T00:00:00.000Z",
          storypoints: 1.5,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(14),
            labelProvider.getLabel(2),
            labelProvider.getLabel(17),
            labelProvider.getLabel(20),
          ]),
      scrum_management.Card(
          id: Int64(39),
          idUser: Int64(4),
          title: 'Actualización de documentación de API',
          epic: 'Documentación de API',
          description:
              'Actualizar la documentación de la API para reflejar los cambios recientes en la plataforma',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Revisar,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-09-28T00:00:00.000Z",
          storypoints: 3.5,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(2),
            labelProvider.getLabel(3),
            labelProvider.getLabel(6),
          ]),
      scrum_management.Card(
          id: Int64(40),
          idUser: Int64(4),
          title: 'Solución de errores en proceso de registro de usuarios',
          epic: 'Registro de Usuarios',
          description:
              'Identificar y corregir errores en el proceso de registro de nuevos usuarios',
          type: scrum_management.CardType.Error,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Pendiente,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-09-15T00:00:00.000Z",
          storypoints: 2.0,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(1),
            labelProvider.getLabel(14),
            labelProvider.getLabel(5),
          ]),
      scrum_management.Card(
          id: Int64(41),
          idUser: Int64(4),
          title: 'Diseño de interfaz de usuario para módulo de inventario',
          epic: 'Diseño de UI',
          description:
              'Diseñar la interfaz de usuario para el módulo de inventario de la plataforma',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Baja,
          state: scrum_management.CardState.Listo,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-07-28T00:00:00.000Z",
          storypoints: 1.0,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(1),
            labelProvider.getLabel(6),
            labelProvider.getLabel(18),
          ]),
      scrum_management.Card(
          id: Int64(42),
          idUser: Int64(4),
          title: 'Implementación de sistema de alertas de seguridad',
          epic: 'Seguridad de la Aplicación',
          description:
              'Implementar un sistema de alertas de seguridad para detectar y prevenir posibles amenazas',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-08-11T00:00:00.000Z",
          storypoints: 4.0,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(15),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(43),
          idUser: Int64(4),
          title: 'Corrección de errores en proceso de pago',
          epic: 'Proceso de Pago',
          description:
              'Identificar y corregir errores en el proceso de pago de la plataforma',
          type: scrum_management.CardType.Error,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Pendiente,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-10-03T00:00:00.000Z",
          storypoints: 2.5,
          category: scrum_management.CardCategory.Proyectos,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(2),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(44),
          idUser: Int64(5),
          title: 'Revisión de código para cumplimiento de estándares',
          epic: 'Revisión de Código',
          description:
              'Revisar el código para garantizar el cumplimiento de los estándares de codificación',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-09-17T00:00:00.000Z",
          storypoints: 2.0,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(14),
            labelProvider.getLabel(3),
            labelProvider.getLabel(17),
            labelProvider.getLabel(18),
          ]),
      scrum_management.Card(
          id: Int64(45),
          idUser: Int64(5),
          title: 'Despliegue de actualizaciones de seguridad',
          epic: 'Seguridad de la Aplicación',
          description:
              'Desplegar las últimas actualizaciones de seguridad en los servidores de la aplicación',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Baja,
          state: scrum_management.CardState.Listo,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-07-05T00:00:00.000Z",
          storypoints: 1.5,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(1),
            labelProvider.getLabel(4),
            labelProvider.getLabel(18),
          ]),
      scrum_management.Card(
          id: Int64(46),
          idUser: Int64(5),
          title: 'Desarrollo de módulo de gestión de proyectos internos',
          epic: 'Gestión de Proyectos',
          description:
              'Desarrollar un módulo de gestión de proyectos internos para optimizar la colaboración entre equipos',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-08-30T00:00:00.000Z",
          storypoints: 4.0,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(6),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(47),
          idUser: Int64(5),
          title: 'Corrección de errores en proceso de exportación de datos',
          epic: 'Exportación de Datos',
          description:
              'Identificar y corregir errores en el proceso de exportación de datos de la plataforma',
          type: scrum_management.CardType.Error,
          priority: scrum_management.CardPriority.Alta,
          state: scrum_management.CardState.Revisar,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-09-09T00:00:00.000Z",
          storypoints: 3.5,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(2),
            labelProvider.getLabel(7),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(48),
          idUser: Int64(5),
          title: 'Desarrollo de sistema de notificaciones en tiempo real',
          epic: 'Notificaciones',
          description:
              'Desarrollar un sistema de notificaciones en tiempo real para informar a los usuarios sobre eventos importantes',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Proceso,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-10-21T00:00:00.000Z",
          storypoints: 2.0,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(6),
            labelProvider.getLabel(15),
            labelProvider.getLabel(8),
          ]),
      scrum_management.Card(
          id: Int64(49),
          idUser: Int64(5),
          title: 'Configuración de sistema de monitoreo de servidores',
          epic: 'Monitoreo de Servidores',
          description:
              'Configurar un sistema de monitoreo de servidores para supervisar el rendimiento y la disponibilidad',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Baja,
          state: scrum_management.CardState.Listo,
          backlog: scrum_management.CardBacklog.True,
          datecreated: "2024-08-15T00:00:00.000Z",
          storypoints: 1.5,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(9),
            labelProvider.getLabel(4),
            labelProvider.getLabel(17),
          ]),
      scrum_management.Card(
          id: Int64(50),
          idUser: Int64(5),
          title: 'Desarrollo de panel de administración de usuarios',
          epic: 'Administración de Usuarios',
          description:
              'Desarrollar un panel de administración de usuarios para gestionar los permisos y accesos de los usuarios',
          type: scrum_management.CardType.Tarea,
          priority: scrum_management.CardPriority.Media,
          state: scrum_management.CardState.Pendiente,
          backlog: scrum_management.CardBacklog.False,
          datecreated: "2024-09-28T00:00:00.000Z",
          storypoints: 2.0,
          category: scrum_management.CardCategory.Roadmap,
          labels: [
            labelProvider.getLabel(3),
            labelProvider.getLabel(14),
            labelProvider.getLabel(6),
          ]),
    ];
  }

  List<scrum_management.Card>? get cards => _cards;

  List<scrum_management.Card> getCards() {
    return _cards!;
  }

  List<scrum_management.Card> getCardsByCategory(
      scrum_management.CardCategory category) {
    return _cards!.where((element) => element.category == category).toList();
  }

  Map<Int64, int> getCardsByUser() {
    Map<Int64, int> cardsByUser = {};
    for (var card in _cards!) {
      if (cardsByUser.containsKey(card.idUser)) {
        cardsByUser[card.idUser] = cardsByUser[card.idUser]! + 1;
      } else {
        cardsByUser[card.idUser] = 1;
      }
    }
    return cardsByUser;
  }

  Map<Int64, int> getCardsByUserWithCategory(
      scrum_management.CardCategory category) {
    Map<Int64, int> cardsByUser = {};
    for (var card in _cards!) {
      if (card.category == category) {
        if (cardsByUser.containsKey(card.idUser)) {
          cardsByUser[card.idUser] = cardsByUser[card.idUser]! + 1;
        } else {
          cardsByUser[card.idUser] = 1;
        }
      }
    }
    return cardsByUser;
  }

  int getTotalCardCount() {
    return _cards!.length;
  }

  int getCardStateCount(scrum_management.CardState state) {
    return _cards!.where((element) => element.state == state).length;
  }

  int getCardCategoryCount(scrum_management.CardCategory category) {
    return _cards!.where((element) => element.category == category).length;
  }

  int getCardStateCountByCategory(scrum_management.CardCategory category,
      scrum_management.CardState state) {
    return _cards!
        .where(
            (element) => element.category == category && element.state == state)
        .length;
  }

  List<scrum_management.Card> getCardsByCategoryAndState(
      scrum_management.CardCategory category,
      scrum_management.CardState state) {
    return _cards!
        .where(
            (element) => element.category == category && element.state == state)
        .toList();
  }

  List<scrum_management.Card> getCardsWithBacklogFalse() {
    return cards!
        .where((card) => card.backlog == scrum_management.CardBacklog.False)
        .toList();
  }

  //pie chart

  int getTotalCardCountWithBacklogFalse() {
    return cards!
        .where((card) => card.backlog == scrum_management.CardBacklog.False)
        .length;
  }

  int getCardStateCountWithBacklogFalse(scrum_management.CardState state) {
    return cards!
        .where((card) =>
            card.state == state &&
            card.backlog == scrum_management.CardBacklog.False)
        .length;
  }

  int getCardCategoryCountWithBacklogFalse(
      scrum_management.CardCategory category) {
    return cards!
        .where((card) =>
            card.category == category &&
            card.backlog == scrum_management.CardBacklog.False)
        .length;
  }

  int getCardStateCountByCategoryWithBacklogFalse(
      scrum_management.CardCategory category,
      scrum_management.CardState estado) {
    int p = _cards!
        .where((element) =>
            element.category == category &&
            element.state == estado &&
            element.backlog == scrum_management.CardBacklog.False)
        .length;
    print(p);
    return p;
  }

  //end pie

  int getHighestCardId() {
    int highestId = 0;
    for (var card in _cards!) {
      if (card.id.toInt() > highestId) {
        highestId = card.id.toInt();
      }
    }
    return highestId;
  }

  void toggleCardBacklog(Int64 id, bool backlog) {
    _cards!.firstWhere((element) => element.id == id).backlog = backlog
        ? scrum_management.CardBacklog.True
        : scrum_management.CardBacklog.False;
    notifyListeners();
  }

  void addCard(scrum_management.Card card) {
    _cards!.add(card);
    notifyListeners();
  }

  void removeCard(scrum_management.Card card) {
    _cards!.remove(card);
    notifyListeners();
  }

  void removeCardById(Int64 id) {
    print('Removing card with id: $id');
    _cards!.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void updateCard(scrum_management.Card card) {
    _cards!.removeWhere((element) => element.id == card.id);
    _cards!.add(card);
    notifyListeners();
  }

  void moveCardtoState(
      scrum_management.Card card, scrum_management.CardState newState) {
    int index = _cards!.indexWhere((element) => element.id == card.id);
    if (index != -1) {
      _cards![index].state = newState;
      notifyListeners();
    }
  }
}
