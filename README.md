# DPDS2016

Documentos de Dirección de Proyectos del Software
=================================================

Este repositorio contiene los distintos documentos requeridos para la Práctica de Dirección de Proyectos del Desarrollo del Software del Doble Grado en Ingeniería Informática y ADE de la Universidad Carlos III de Madrid.

Estos documentos están en LaTeX para favorecer el control de versiones y el manejo de grandes documentos.

Al proyecto desarrollado para CARSEAFTY consiste en un sistema de seguridad de coches semi-autónomos capaz de reconocer la velocidad máxima de las vías, la posibilidad de accidente o choque frontal, y de detectar vehículos en el punto muerto.

Para poder compilar el proyecto, es necesario tener en cuenta o siguiente:

Documentos contenidos:
----------------------

+ Proyecto completo: compilar "SmartSoftwareSolutions.tex" con pdftex y bibtex
+ Oferta: compilar "S3_Oferta.tex" con pdftex y bibtex
+ Costes: compilar "S3_Costes.tex" con pdftex y bibtex
+ Viabilidad (EVS): compilar "S3_EVS.tex" con pdftex y bibtex

Para crear tablas rápido:
-------------------------
1. Pegar la tabla en un excel
1. En la página excel2latex.com se te crea la tabla en formato LaTeX.
1. Copiar y pegar esa tabla en el documento.
1. Sustituir

```
\begin{array}{ | l | l | l | l | l | l | l | }
.....
\end{array}
```
por:

```
\begin{table}[h]
\begin{center}
\begin{tabular}{ l l l l l l l l l l }
.....
\end{tabular}
\caption{Titulo de la tabla.}
\label{tab:etiqueta}
\end{center}
\end{table}
```
