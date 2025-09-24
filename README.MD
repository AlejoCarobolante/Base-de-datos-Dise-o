
#  Base de Datos - Migraciones

¡Bienvenidos al repositorio de migraciones de la base de datos!  
Este proyecto pertenece al grupo **Hologram** del curso **Diseño de Sistemas 2025** 🚀

![Logo ](files/logo.png)

---

## 📄 Descripción

Aquí encontrarás todas las **migraciones** necesarias para crear y actualizar la base de datos de nuestro proyecto.  
Estas migraciones aseguran que todos los miembros del grupo **Hologram** trabajemos con la misma estructura de datos 🗂️

---

## 🗂️ Contenido

- 🔹 Migraciones de tablas principales  
- 🔹 Scripts de actualización  
- 🔹 Configuración inicial de la base de datos  

---

## ⚡ Cómo usar

1. Clona el repositorio:
   ```bash
   git clone https://github.com/AlejoCarobolante/Base-de-datos-Dise-o.git
   cd Base-de-datos-Dise-o
2. Ejecuta las migraciones según tu framework:

    La manera más sencilla es importar el archivo COPIA_BD_ALEJO.sql directamente en la BD
    También es posible abrir el archivo con el bloc de notas, copiar su contenido y ejecutar el script completo en una editor de SQL

## 👥 Grupo

* Grupo: Hologram

* Curso: Diseño de Sistemas 2025

* Objetivo: Mantener la base de datos sincronizada y organizada para todos los miembros del grupo 🎯

## 🤝 Contribuciones

Si quieres ayudar o proponer mejoras, coordina con los miembros del grupo Hologram antes de hacer un pull request ✨

### 🏗️ Estructura de carpetas
Base-de-datos-Dise-o/
│
├── migrations/       # Migraciones de la base de datos
├── scripts/          # Scripts adicionales
└── README.md         # Este archivo

## 🎨 Nota

Este repositorio está pensado para aprender, compartir y mantener la base de datos de forma divertida y ordenada.
¡A disfrutar del código y las migraciones! 💻🎈

### 🛠️ Requisitos

Docker
    MySQL pulleado

Sistema Gestor de Base de Datos

Base de datos MySQL/PostgreSQL

Permisos de ejecución para scripts de migración

![The Boss ](files/tanen.jpg)

# Funcionalidades implementadas en las migraciones

## Constraints
* Se implementan restricciones al momento de la creación de entidades intermedias:
    1. Se establece que las claves (que a nivel de claves de negocio son compuestas) son únicas, por lo cual no va a haber dos instancias de una tabla intermedia relacionadas a las mismas instancias de tablas del negocio:
        * ProyectoPuesto: UNIQUE (OIDProyecto, OIDPuesto)
        * ProyectoPuestoCarrera UNIQUE (OIDProyectoPuesto, OIDCarrera, OIDCarreraPlanEstudios)
        * EstudianteCarrera UNIQUE (OIDEstudiante, OIDCarrera, OIDCarreraPlanEstudios, OIDEstudianteUniversidad, OIDCarreraUniversidad)
        * EstudianteUniversidad UNIQUE (OIDEstudiante, OIDUniversidad)
        * ProcesoSeleccionPostulacion UNIQUE (OIDProcesoSeleccionProyectoPuesto, OIDPostulacion)
        * ProcesoSeleccionProyectoPuesto UNIQUE (OIDProcesoSeleccion, OIDProyectoPuesto)
        * CarreraUniversidad UNIQUE (OIDCarrera, OIDUniversidad)
        * ProyectoUniversidad UNIQUE (OIDProyecto, OIDUniversidad)


## Triggers de la Base de Datos

Este documento describe los triggers implementados en la base de datos, su propósito y comportamiento.

---

### 1. Triggers de "baja" de entidades

Estos triggers evitan que se vuelva a dar de baja una entidad si ya tiene una fecha de baja registrada.

| Trigger                                  | Tabla                   | Descripción                                                                         |
| ---------------------------------------- | ----------------------- | ----------------------------------------------------------------------------------- |
| `trg_check_baja_carrera`                 | Carrera                 | Evita volver a dar de baja una carrera si `fechaBajaCarrera` no cambia.             |
| `trg_check_baja_planestudio`             | CarreraPlanEstudios     | Evita volver a dar de baja un plan de estudios si `fechaBajaPlanEstudio` no cambia. |
| `trg_check_baja_empresa`                 | Empresa                 | Evita volver a dar de baja una empresa si `fechaBajaEmpresa` no cambia.             |
| `trg_check_baja_estadocontrato`          | EstadoContrato          | Evita volver a dar de baja un estado de contrato.                                   |
| `trg_check_baja_estadoestudiantecarrera` | EstadoEstudianteCarrera | Evita volver a dar de baja el estado de un estudiante en una carrera.               |
| `trg_check_baja_estadopostulacion`       | EstadoPostulacion       | Evita volver a dar de baja un estado de postulación.                                |
| `trg_check_baja_estadoprocesoseleccion`  | EstadoProcesoSeleccion  | Evita volver a dar de baja un estado de proceso de selección.                       |
| `trg_check_baja_estadoproyecto`          | EstadoProyecto          | Evita volver a dar de baja un estado de proyecto.                                   |
| `trg_check_baja_estudiante`              | Estudiante              | Evita volver a dar de baja un estudiante.                                           |
| `trg_check_baja_proyectopuesto`          | ProyectoPuesto          | Evita volver a dar de baja un proyecto puesto.                                      |
| `trg_check_baja_proyectopuestocarrera`   | ProyectoPuestoCarrera   | Evita volver a dar de baja un proyecto puesto-carrera.                              |
| `trg_check_baja_puesto`                  | Puesto                  | Evita volver a dar de baja un puesto.                                               |
| `trg_check_baja_universidad`             | Universidad             | Evita volver a dar de baja una universidad.                                         |

---

### 2. Triggers de validación de postulaciones

| Trigger                                    | Tabla                           | Descripción                                                                                                                                                                                                                                             |
| ------------------------------------------ | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `trg_validar_postulacion_cant_materias`    | Postulacion (INSERT)            | Valida que el estudiante cumpla la cantidad mínima de materias aprobadas y regulares requeridas.                                                                                                                                                        |
| `trg_ValidarMaxPostulaciones`              | Postulacion (INSERT)            | Verifica que el número de postulaciones a un puesto no exceda el máximo permitido.                                                                                                                                                                      |
| `trg_ValidarEstadoProyectoParaPostulacion` | Postulacion (INSERT)            | Solo permite postulaciones a proyectos en estado 2 (Iniciado).                                                                                                                                                                                          |
| `trg_AutoActualizarEstadoProyecto`         | Postulacion (AFTER INSERT)      | Actualiza el proyecto a estado 3 (En Evaluación) si todos los puestos cumplen la cantidad de postulaciones.                                                                                                                                             |
| `trg_pp_activo_para_postulacion`           | Postulacion (INSERT)            | Evita que se realice una postulación a un ProyectoPuesto dado de baja.                                                                                                                                                                                  |
| `trg_estudiante_carrera_habilitada`        | Postulacion (INSERT)            | Valida que la carrera del estudiante esté habilitada para el puesto.                                                                                                                                                                                    |
| `trg_proyecto_pertenece_uni_est`           | Postulacion (INSERT)            | Valida que el proyecto pertenezca a alguna universidad del estudiante.                                                                                                                                                                                  |
| `trg_pp_limite_postulaciones`              | Postulacion (INSERT)            | Impide postular a un ProyectoPuesto cuya cantidad de postulaciones sea igual o mayor a `cantidadSuPostulaciones`.                                                                                                                                       |
| `trg_check_estado_postulacion`             | PostulacionEstado (INSERT)      | Valida que los cambios de estado de una postulación sean válidos, no repetidos y dentro del flujo permitido.                                                                                                                                            |
| `trg_check_estado_proceso_postulacion`     | ProcesoSeleccionEstado (UPDATE) | Valida que los cambios de estado de un proceso de selección sean válidos y respeten el flujo permitido.                                                                                                                                                 |
| `trg_ps_estado_vs_proyecto_ins`            | ProcesoSeleccionEstado (INSERT) | Permite cambios de estado de un proceso de selección a *Simulado antes de Finalizar Postulaciones* solo si el proyecto está en estado *Iniciado*, y a *Simulado después de Finalizar Postulaciones* solo si el proyecto está en estado *En Evaluación*. |


---

### 3. Triggers de validación y control de proyectos

| Trigger                                     | Tabla             | Descripción                                                                                                                                                            |
| ------------------------------------------- | ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `trg_check_creacion_proyecto`               | Proyecto (INSERT) | Asigna estado 1 (Creado) si no se especifica y valida que el proyecto se cree únicamente en ese estado.                                                                |
| `trg_check_estado_proyecto`                 | Proyecto (UPDATE) | Valida las transiciones de estado del proyecto y evita repetir el mismo estado.                                                                                        |
| `trg_check_iniciar_proyecto_pp_ppc_notnull` | Proyecto (UPDATE) | Antes de iniciar un proyecto (estado 2), verifica que haya al menos un ProyectoPuesto y un ProyectoPuestoCarrera activos.                                              |
| `trg_ValidarCambioEstadoProyecto`           | Proyecto (UPDATE) | Solo permite pasar a estado 3 si todos los puestos cumplen con la cantidad de postulaciones necesarias. Si no, la fecha de inicio del proyecto se posterga una semana. |
| `trg_actualiza_fecha_inicio_postulaciones`  | Proyecto (UPDATE) | Cuando el proyecto pasa a estado 2 (Iniciado), la `fechaInicioPostulaciones` se define automáticamente como la fecha actual.                                           |


---

### 4. Triggers de ProyectoPuesto y ProyectoPuestoCarrera

| Trigger                                             | Tabla                          | Descripción                                                                                         |
| --------------------------------------------------- | ------------------------------ | --------------------------------------------------------------------------------------------------- |
| `trg_proyectopuesto_insert_proyecto_creado`         | ProyectoPuesto (INSERT)        | Solo permite crear un ProyectoPuesto si el proyecto está en estado 1 (Creado).                      |
| `trg_proyectopuesto_update_proyecto_estado`         | ProyectoPuesto (UPDATE)        | Solo permite modificar un ProyectoPuesto si el proyecto está en estado 1 (Creado) o 4 (Suspendido). |
| `trg_evitar_proyectopuestocarrera_con_carrera_baja` | ProyectoPuestoCarrera (INSERT) | Impide crear un ProyectoPuestoCarrera si la carrera está dada de baja.                              |
| `trg_asignar_plan_estudios_vigente`                 | ProyectoPuestoCarrera (INSERT) | Asigna automáticamente el plan de estudios vigente si no se especifica.                             |
| `trg_proyectopuestocarrera_insert_proyecto_alta`    | ProyectoPuestoCarrera (INSERT) | Solo permite crear un ProyectoPuestoCarrera si el proyecto está en estado 1 (Creado).               |
| `trg_proyectopuestocarrera_update_proyecto_alta`    | ProyectoPuestoCarrera (UPDATE) | Solo permite modificar un ProyectoPuestoCarrera si el proyecto está en estado 1 (Creado).           |


---

#### Resumen general

- Los triggers de **baja** previenen duplicaciones de baja en las entidades.  
- Los triggers de **postulación** validan requisitos de materias, estados de proyectos y transiciones de estado.  
- Los triggers de **proyectos y puestos** controlan la creación, modificación y transición de estados, asegurando consistencia en los datos relacionados (puestos, carreras, planes de estudios).  
