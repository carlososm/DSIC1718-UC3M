# DPDS2016

Documentos de Dirección de Proyectos del Software
=================================================

Este repositorio contiene los distintos documentos requeridos para la Práctica de Desarrollo de Sistemas de Información Coorporativos del Doble Grado en Ingeniería Informática y ADE de la Universidad Carlos III de Madrid.

Estos documentos están en LaTeX para favorecer el control de versiones y el manejo de grandes documentos.

Para poder compilar el proyecto, es necesario tener en cuenta o siguiente:

Documentos contenidos:
----------------------

+ Proyecto completo: compilar "RSPlusAgency.tex" con pdftex y bibtex
+ Entrega 1: compilar "E1_RSPA.tex" con pdftex y bibtex
+ Entrega 2: compilar "RSPlusAgency.tex" con pdftex y bibtex (E2 == Proyecto completo)

Comandos básicos:
----------------
```
\section{Nombre de la sección}
\subsection{Nombre de la subsección}
\par Párrafo
\textbf{texto en negrita}
\textit{texto en itálicas}
\textbf{\textit{texto en negrita e itálicas}}
\ref{ref:referencia}
\cite{itemBibliografía}
```

Listado de símbolos:
--------------------
```
\begin{itemize}[-]
  \item Nombre 1
  \item Nombre 2
  \item Nombre 3
\end{itemize}
```
Cambiando - por el símbolo a utilizar

Listado numérico:
-----------------
```
\begin{enumerate}[1. ]
  \item Nombre 1
  \item Nombre 2
  \item Nombre 3
\end{enumerate}
```
Cambiando 1. por el formato de numeración

Listado de descripciones:
-------------------------
```
\begin{description}[style=multiline, leftmargin=3cm]
  \item[Nombre 1] Texto
  \item[Nombre 2] Texto
  \item[Nombre 3] Texto
\end{description}
```
Cambiado el margen izquierdo al deseado

Para crear tablas rápido (cortas):
----------------------------------
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
siendo el número de l el número de columnas deseado.
Recordad que l es una columna alineada a la izquierda, c centrada y r a la derecha.
También se puede usar p{3cm} en vez de l, c o r.

Estructura de las tablas largas:
--------------------------------
```
\begin{center}
\begin{longtable}{l l l l l l l}

%HEAD
Col1 & Col2 & Col3 & Col4 & Col5 & Col6 & Col7 \\ \hline \hline
\endfirsthead
\endhead

%FOOT
\hline \multicolumn{7}{r}{\textit{Continúa en la siguiente página}} \\
\endfoot
\endlastfoot

%table

\caption{Nombre de la tabla}\\
\label{tab:tabla}
\end{longtable}
\end{center}
```
siendo el número de l el número de columnas deseado y cambiando el 7 por el número de columnas.
Recordad que l es una columna alineada a la izquierda, c centrada y r a la derecha.
También se puede usar p{3cm} en vez de l, c o r.

Introducir imágenes:
--------------------
```
\begin{figure}[H]
\begin{center}
\includegraphics[width=0.5\textwidth]{./img/grafico2.png}
\end{center}
\caption{Nombre del gráfico/imagen}
\label{img:imagen}
\end{figure}
```

cambiando la ruta de la imagen y el tamaño en % del ancho
