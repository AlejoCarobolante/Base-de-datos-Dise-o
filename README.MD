
# 🎉 Base de Datos - Migraciones

¡Bienvenidos al repositorio de migraciones de la base de datos!  
Este proyecto pertenece al grupo **Hologram** del curso **Diseño de Sistemas 2025** 🚀

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

#### 🛠️ Requisitos

Docker
    MySQL pulleado

Sistema Gestor de Base de Datos

Base de datos MySQL/PostgreSQL

Permisos de ejecución para scripts de migración

![Sneaky Peaky ](files/sg2.png)

##### Funcionalidades implementadas en las migraciones
# Triggers
*  Se implementan triggers para los siguientes casos:
    1. Se plasma la lógica de los DTE en los triggers: los cambios de estado sólo se pueden dar entre estados permitidos
    2. Se trabaja con las fechas de baja: cuando una entidad está dada de baja, no se puede volver a setear su fecha de baja
    3. Se trabaja con los inserts
        * En el caso de ProyectoPuestoCarrera, cuando se hace un INSERT y no se explicita el Plan de Estudios, la fila se crea con el plan de estudios vigente relacionado a la carrera indicada
        * También en el caso de ProyectoPuestoCarrera, cuando se hace un INSERT y se indica una Carrera cuya fecha de Baja es distinta de NULL, se muestra un error que indica que no se puede crear la instancia relacionada a una Carrera dada de baja

# Constraints
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
