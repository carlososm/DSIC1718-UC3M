\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apuntes}[2017/01/01 Template por CO Notes]
\LoadClass{memoir}

% Required Packages
\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[math]{kurier}
\RequirePackage{microtype}
\RequirePackage{geometry}
\RequirePackage{eurosym}
\RequirePackage{url}
\RequirePackage{lscape}


\RequirePackage[dvips]{graphicx}
\RequirePackage{xcolor}
\RequirePackage{times}

\RequirePackage{longtable}

\RequirePackage[shortlabels]{enumitem}

\RequirePackage{float}
\RequirePackage{multirow}
\RequirePackage{colortbl}

\RequirePackage{lmodern}
\RequirePackage{titlesec}
\RequirePackage{microtype}
\RequirePackage{tikz}

\RequirePackage{imakeidx}
\RequirePackage{pdfpages}
\RequirePackage{lipsum}

\RequirePackage{parskip}
\RequirePackage{ulem}

\RequirePackage{amsmath}
\RequirePackage{tikz}
\RequirePackage{anysize}
\RequirePackage[siunitx,european,americanresistors]{circuitikz}

\RequirePackage[
breaklinks=true,colorlinks=true,
linkcolor=blue,urlcolor=blue,citecolor=blue,% PDF VIEW
%linkcolor=black,urlcolor=black,citecolor=black,% PRINT
bookmarks=true,bookmarksopenlevel=2]{hyperref}



%Colors
\definecolor{fondo}{RGB}{243, 242, 244}

\definecolor{principal}{RGB}{19, 41, 61}
\definecolor{secundario}{RGB}{0, 100, 148}

\definecolor{auxiliar}{RGB}{27, 152, 224}
\definecolor{resaltado1}{RGB}{246, 174, 45}
\definecolor{resaltado2}{RGB}{242, 100, 25}

\definecolor{marca}{RGB}{90, 202, 191}

\definecolor{textoPrincipal}{RGB}{19, 41, 61}

\definecolor{textoInvertido}{RGB}{232, 241, 242}
\definecolor{textoResaltado}{RGB}{90, 202, 191}
\definecolor{textoAuxiliar}{RGB}{27, 152, 224}


\definecolor{gray97}{gray}{.97}
\definecolor{gray75}{gray}{.75}
\definecolor{gray45}{gray}{.45}

\RequirePackage{listings}
\lstset{ frame=Ltb,
     framerule=0pt,
     aboveskip=0.5cm,
     framextopmargin=3pt,
     framexbottommargin=3pt,
     framexleftmargin=0.4cm,
     framesep=0pt,
     rulesep=.4pt,
     backgroundcolor=\color{gray97},
     rulesepcolor=\color{black},
     texcl=true,
     %
     stringstyle=\ttfamily,
     showstringspaces = false,
     basicstyle=\small\ttfamily,
     commentstyle=\color{gray45},
     keywordstyle=\bfseries,
     %
     numbers=left,
     numbersep=3pt,
     numberstyle=\tiny,
     numberfirstline = false,
     breaklines=true,
   }

% minimizar fragmentado de listados
\lstnewenvironment{listing}[1][]
   {\lstset{#1}\pagebreak[0]}{\pagebreak[0]}


\lstdefinestyle{consola}
   {basicstyle=\ttfamily,
    backgroundcolor=\color{gray75},
   }

\lstdefinestyle{C}
   {language=C,
   }


% PDF VIEW
\setlength{\headsep}{1cm}
\geometry{total={210mm,297mm},
left=20mm,right=20mm,
bindingoffset=0mm, top=25mm, bottom=35mm, headsep=1cm}
% PRINT
%\geometry{total={210mm,297mm},
%left=20mm,right=20mm,
%bindingoffset=10mm, top=25mm,bottom=25mm}


\OnehalfSpacing
%\linespread{1.3}

%%% CHAPTER'S STYLE
%\chapterstyle{bianchi}
%\chapterstyle{ger}
%\chapterstyle{madsen}
%\chapterstyle{ell}
\titleformat{\chapter}[display]
  {\normalfont\LARGE\scshape\color{principal}}
  {\filleft%
    \begin{tikzpicture}
    \node[
      outer sep=0pt,
      text width=2.5cm,
      minimum height=3cm,
      fill=principal,
      font=\color{fondo}\fontsize{80}{90}\selectfont,
      align=center
      ] (num) {\thechapter};
    \node[
      rotate=90,
      anchor=south,
      font=\color{principal}\Large\normalfont
      ] at ([xshift=-5pt]num.west) {\textls[180]{\textsc{\color{principal}\chaptertitlename}}};
    \end{tikzpicture}%
  }
  {10pt}
  {\titlerule[2.5pt]\vskip3pt\titlerule\vskip4pt\HUGE\sffamily}



%%% STYLE OF SECTIONS, SUBSECTIONS, AND SUBSUBSECTIONS
\renewcommand{\thesection}{\Roman{section}}

% SECTIONS STYLE
\def\sectionfont{\LARGE\scshape\raggedright\color{principal}}
\makeatletter
\setsecheadstyle{
    \tikz{\fill[principal](4,-1.3) rectangle (0,-2);
        \node[
            inner sep=0pt,
            outer sep=0pt,
            text=fondo,
            scale=1,
            font=\sectionfont
        ]  at (3.2,-1.7)    {\thesection};
    }\vskip-6ex\sectionfont\color{principal}
}

\setbeforesecskip{-1.5ex plus -.5ex minus -.2ex}
\setaftersecskip{1.3ex plus .2ex}


% SUBSECTIONS
\def\subsectionfont{\large\scshape\raggedright\color{principal}}
\setsubsecheadstyle{
    \tikz{\fill[secundario](3,-1.3) rectangle (0,-2);
        \node[
            inner sep=0pt,
            outer sep=0pt,
            text=fondo,
            scale=1,
            font=\subsectionfont
        ]  at (2.2,-1.7)    {\thesubsection};
    }\vskip-4.5ex\subsectionfont\color{secundario}
}


\setbeforesubsecskip{-1\onelineskip}
\setaftersubsecskip{3\onelineskip}

% SUBSUBSECTIONS
\def\subsubsectionfont{\large\scshape\raggedright\color{principal}}
\setsubsubsecheadstyle{
    \tikz{\fill[auxiliar](2,-1.3) rectangle (0,-2);
        \node[
            inner sep=0pt,
            outer sep=0pt,
            text=fondo,
            scale=1,
            font=\subsubsectionfont
        ]  at (1.2,-1.7)    {\thesubsubsection};
    }\vskip-5ex\subsubsectionfont\color{auxiliar}
}

\setbeforesubsubsecskip{-1\onelineskip}
\setaftersubsubsecskip{3\onelineskip}

\def\@seccntformat#1{\hskip8em}
\makeatother


%%% STYLE OF PAGES NUMBERING
%\pagestyle{companion}\nouppercaseheads
%\pagestyle{headings}
%\pagestyle{Ruled}

\newcommand{\makepage}[1]{
    \makepagestyle{myruled}
    \makeheadrule {myruled}{\textwidth}{\normalrulethickness}
    \makefootrule {myruled}{\textwidth}{\normalrulethickness}{\footruleskip}
    \makeevenhead {myruled}{\includegraphics[width=0.2\textwidth]{#1}}{}{Dirección de Proyectos del Desarrollo del Software}
    \makeoddhead {myruled}{\includegraphics[width=0.2\textwidth]{#1}}{}{Dirección de Proyectos del Desarrollo del Software}
    \makeevenfoot {myruled}{}{página \thepage}{}
    \makeoddfoot {myruled}{}{página \thepage}{}
    \makeatletter % because of \@chapapp
    \makepsmarks {myruled}{
        \nouppercaseheads
        \createmark {chapter} {both} {shownumber}{\@chapapp\ }{. \ }
        \createmark {section} {right}{shownumber}{} {. \ }
        \createmark {subsection} {right}{shownumber}{} {. \ }
        \createmark {subsubsection}{right}{shownumber}{} {. \ }
        \createplainmark {toc} {both} {\contentsname}
        \createplainmark {lof} {both} {\listfigurename}
        \createplainmark {lot} {both} {\listtablename}
        \createplainmark {bib} {both} {\bibname}
        \createplainmark {index} {both} {\indexname}
        \createplainmark {glossary} {both} {\glossaryname}
    }
    \makeatother
    \setsecnumdepth{subsubsection}
}

\maxsecnumdepth{subsection} % chapters, sections, and subsections are numbered
\maxtocdepth{subsection} % chapters, sections, and subsections are in the Table of Contents


%% COMANDOS ADICIONALES %%
\newcommand{\mycite}[2]{
    \begin{center}
        \begin{minipage}{0.7\linewidth}
            \vspace{5pt}%margen superior de minipage
            {\small
                #1
            }
            \begin{flushright}
                (#2)
            \end{flushright}
            \vspace{5pt}%margen inferior de la minipage
        \end{minipage}
    \end{center}
}

%tabular
\renewcommand{\arraystretch}{1.5}%

% Firmas
\newcommand{\signL}[3]{
	\begin{flushleft}
    \ifx&#3& %if #3 argument is empty

	\else
	\includegraphics[width=0.4\textwidth]{#3}\\ %Signature Image
	\fi
	\bfseries #1 %Name, surname
	\mdseries \\#2 %Position
	\end{flushleft}
}
\newcommand{\signR}[3]{
	\begin{flushright}
    \ifx&#3& %if #3 argument is empty

	\else
	\includegraphics[width=0.4\textwidth]{#3}\\ %Signature Image
	\fi
	\bfseries #1 %Name, surname
	\mdseries \\#2 %Position
	\end{flushright}
}

\newcommand{\tabitem}{~\llap{-}~~}
