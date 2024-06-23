# basic_jsp_project
Proyecto simple que integra conceptos de JSP

basic_jsp_project es una aplicación web simple que permite capturar hasta 4 valores correspondientes a los lados de una figura geométrica. La aplicación determina automáticamente el tipo de figura y calcula sus propiedades geométricas correspondientes. Las figuras soportadas son: Círculo, Cuadrado, Rectángulo y Triángulo.

## Estructura del Proyecto
```
basic_jsp_project/
├── WEB-INF/
│ └── web.xml
├── css/
│ └── styles.css
├── index.html
├── result.jsp
└── calculate.jsp
```

## Descripción de los Archivos

- **WEB-INF/web.xml**: Archivo de configuración del servlet.
- **css/styles.css**: Archivo CSS que contiene los estilos para la aplicación.
- **index.html**: Página principal con el formulario para ingresar los valores de los lados de la figura.
- **calculate.jsp**: Página JSP que procesa los valores ingresados, determina el tipo de figura y calcula sus propiedades geométricas.
- **result.jsp**: Página JSP que muestra los resultados calculados.

## Funcionalidades

1. **Formulario de Entrada**: El usuario puede ingresar hasta 4 valores correspondientes a los lados de una figura geométrica.
2. **Determinación de Figura**: Basado en el número y los valores de los lados ingresados, la aplicación determina si la figura es un Círculo, Cuadrado, Rectángulo o Triángulo.
3. **Cálculos Geométricos**:
   - **Círculo**: Calcula el diámetro, circunferencia y área.
   - **Cuadrado**: Calcula el perímetro y área.
   - **Rectángulo**: Calcula el perímetro y área.
   - **Triángulo**: Determina si el triángulo es Equilátero, Isósceles o Escaleno, y calcula su área y perímetro.

## Estilos

La aplicación utiliza un archivo CSS externo (`css/styles.css`) para aplicar estilos consistentes a las páginas web. Esto incluye estilos para el formulario, botones y resultados.


## Ejecucion en linux

Luego de instalar apache-tomcat y java SDK, deberemos colocar nuestro proyecto en `/opt/tomcat/webapps`

y ejecutar el comando `/opt/tomcat/bin/startup.sh`