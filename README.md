# BD_parcial1_servilimar_univalle_2025

Este repositorio contiene el desarrollo práctico correspondiente al Parcial n.º 1 de la asignatura Bases de Datos. En él se documenta el despliegue de una base de datos mediante Docker y PostgreSQL, así como los archivos con las instrucciones DDL y DML empleadas para su creación, configuración y carga de datos dentro del entorno de trabajo.

Herramientas utilizadas:
  - Docker, para el despliegue de contenedores independientes de base de datos y administración.
  - PostgreSQL v14, que es el sistema gestor de bases de datos utilizado para crear y almacenar la información del sistema.
  - pgAdmin4, la interfaz gráfica usada para administrar la base de datos y ejecutar los scripts SQL.

Procedimiento:
1. Inicialmente, se levanta un Docker de PostgreSQL con las credenciales que fueron indicadas en el enunciado de la actividad y se inicia con el comando "docker start nombre_docker".
2. Posteriormente, se levanta el Docker de pgAdmin para el acceso web.  Se ingresa la dirección asignada en el levantamiento del Docker para el acceso web a pgAdmin de manera local y se inicia sesión con las credenciales que fueron señaladas.
4. Al haber ingresado satisfactoriamente a pgAdmin, se registra el servidor PostgreSQL con el botón “Add New Server”. Creando con ello una conexión entre pgAdmin y el contenedor de PostgreSQL: primero se debe ubicar en el apartado “General”, donde se le asigna un nombre descriptivo al servidor. Y segundo, en el apartado de “Connection” se establecen los parámetros técnicos necesarios para enlazar pgAdmin con el Docker, haciendo uso de la información con la que fue creado.
6. Ya conectado el servidor, se procede a crear la base de datos, dando clic derecho sobre “Databases” y seleccionando los botones “Create” y “Database…”.
7. Finalmente, en la ventana de creación se asigna el nombre "servilimar" a la base de datos y se confirma la operación con el botón Save.

Ya con ello se puede abrir una ventana de "Query tool" que aparece al dar clic derecho sobre la base de datos creada, para poder dar las instrucciones DDL y DML.

