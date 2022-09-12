\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proj-report}[2022/05/21 Project report]

% Loads the base class (book is used for this class)
\LoadClass[a4paper]{report}

% Load required packages
\RequirePackage{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{titling}

\input{style/main.tex}

\def\subtitle#1{\newtoks\subtitle%
\subtitle={#1}}
\def\intitute#1{\newtoks\institute%
\institute={#1}}
\def\projectgroup#1{\newtoks\projectgroup%
\projectgroup={#1}}
%% === TITLES === %%

\titleformat{\chapter}
  {\Huge\bfseries\color{aaublue1}}{\thechapter\;}{6pt}{#1}

\titleformat{\section}
  {\LARGE\bfseries\color{aaublue1}}{\thesection\;}{6pt}{#1}
  
%% === TABLE OF CONTENTS === %%
\makeatletter
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip\large
      #1\nobreak\hfil
      \nobreak\hb@xt@\@pnumwidth{\hss #2%
                                 \kern-\p@\kern\p@}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

\renewcommand\tableofcontents{%
  \null\hfill\textbf{\Huge\contentsname}\hfill\null\par
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  \@starttoc{toc}%
}
\makeatother

\newcommand{\frontpage}{
\begin{titlepage}
\vspace*{\fill}
    \backgroundsetup{
    scale=1.1,
    angle=0,
    opacity=1.0,  %% adjust
    contents={\includegraphics[width=\paperwidth,height=\paperheight]{style/aau_waves.eps}}
    }
   \noindent%
  {\color{white}\fboxsep0pt\colorbox{aaublue1}{\begin{tabular}{@{}p{\textwidth}@{}}
    \begin{center}
    \Huge{\textbf{
      \thetitle
    }}
    \end{center}
    \begin{center}
      \Large{
        \the\subtitle
      }
    \end{center}
    \vspace{0.2cm}
   \begin{center}
    {\Large
      \theauthor
    }\\
    \vspace{0.2cm}
    {\large
      \the\projectgroup %
      , \thedate% insert name of study, group number, year-month
    }
   \end{center}
   \vspace{0.2cm}
%% Comment this section in if you are doing Bachelor or Master Project   
   \begin{center}
    {\Large
      Semester Project
    }
   \end{center}
  \end{tabular}}}
  \vfill
  \begin{center}
    \includegraphics[width=0.2\paperwidth]{style/aau_logo_circle_en.eps}%
  \end{center}
\end{titlepage}
\clearpage}