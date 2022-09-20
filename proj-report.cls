\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proj-report}[2022/05/21 Project report]

% Loads the base class (book is used for this class)
\LoadClass[a4paper]{report}

% Load required packages
\RequirePackage[table]{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}

%%% FONT %%%
\usepackage{fontspec}
\newfontfamily{\aaufontblack}{Barlow}[%
Path = ./style/aaufont/,
Extension = .ttf, 
UprightFont = *-Black]

\newfontfamily{\aaufontbold}{Barlow}[%
Path = ./style/aaufont/,
Extension = .ttf, 
UprightFont = *-Bold]

\newfontfamily{\aaufont}{Barlow}[%
Path = ./style/aaufont/,
Extension = .ttf, 
UprightFont = *-Regular,
BoldFont = *-Bold,
ItalicFont= *-Italic]

%%% TABLES %%%
\arrayrulecolor{aaublue1}

%%% COLOR %%%
% Primary colors
\definecolor{aaublue1}{RGB}{33, 26, 82} % White text.
\definecolor{aaublue2}{RGB}{89, 79, 191}% White text.
\definecolor{aaublue3}{RGB}{84, 97, 110}% White text.

% Secondary colors
\definecolor{aauorange1}{RGB}{187, 91, 23}    % White text.
\definecolor{aauorange2}{RGB}{223, 142, 46}   % aaublue1 text.
\definecolor{aaumustard1}{RGB}{151, 112, 31}  % White text.
\definecolor{aaumustard2}{RGB}{177, 147, 53}  % aaublue1 text.
\definecolor{aaulightblue1}{RGB}{0, 127, 163} % White text.
\definecolor{aaulightblue2}{RGB}{49, 169, 193}% aaublue1 text.
\definecolor{aaubrown1}{RGB}{161, 101, 71}    % White text.
\definecolor{aaubrown2}{RGB}{204, 139, 102}   % aaublue1 text.
\definecolor{aaugreen1}{RGB}{14, 133, 99}     % White text.
\definecolor{aaugreen2}{RGB}{92, 175, 141}    % aaublue1 text.
\definecolor{aaupink1}{RGB}{204, 68, 91}      % White text.
\definecolor{aaupink2}{RGB}{231, 130, 147}    % aaublue1 text.

% -- Titles ----------------------------------------

\titleformat{\chapter}
  {\aaufontblack\Huge\bfseries\color{aaublue1}}{\thechapter.\;}{6pt}{\MakeUppercase{#1}}

\titleformat{\section}
  {\aaufontblack\LARGE\bfseries\color{aaublue1}}{\thesection\;}{6pt}{\MakeUppercase{#1}}
  
\titleformat{\subsection}
  {\aaufontbold\large\bfseries\color{aaublue1}}{\thesection\;}{6pt}{\MakeUppercase{#1}}
 
\titleformat{\subsubsection}
  {\aaufontbold\normalsize\bfseries\color{aaublue1}}{\thesection\;}{6pt}{\MakeUppercase{#1}}



\def\subtitle#1{\newtoks\subtitle%
\subtitle={#1}}
\def\intitute#1{\newtoks\institute%
\institute={#1}}
\def\projectgroup#1{\newtoks\projectgroup%
\projectgroup={#1}}
\def\participants#1{\newtoks\participants%
\participants={#1}}
\def\department#1{\newtoks\department%
\department={#1}}
\def\supervisor#1{\newtoks\supervisor%
\supervisor={#1}}

 
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

% === FRONT PAGE ===

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
  {\color{white}\aaufontblack\fboxsep0pt\colorbox{aaublue1}{\begin{tabular}{@{}p{\textwidth}@{}}
    \vspace{6pt}
    \begin{center}
    \Huge{\MakeUppercase{
      \thetitle
    }}
    \end{center}
    \begin{center}
      \Large{\aaufont
        \the\subtitle
      }
    \end{center}
    \vspace{0.2cm}
   \begin{center}
    {\Large\MakeUppercase{
      \the\department
    }}\\
    \vspace{0.2cm}
    {\large\aaufont
      \the\projectgroup %
      , \thedate% insert name of study, group number, year-month
    }
   \end{center}
   \vspace{0.2cm}
%% Comment this section in if you are doing Bachelor or Master Project   
   \begin{center}
    {\Large\MakeUppercase{
      Semester Project
    }}
   \end{center}
  \vspace{24pt}
  \end{tabular}}}
  
  \vfill
  \begin{center}
    \includegraphics[width=0.2\paperwidth]{style/aau_logo_circle_en.eps}%
  \end{center}

\end{titlepage}
\clearpage}

% === TITLEPAGE ===

\def\tpagestyle#1{{\color{aaublue1}\aaufontbold\large#1}}

\newcommand{\indexpage}{%
    %create title page
\thispagestyle{empty}
{\aaufont
\noindent%
\begin{tabular}{@{}ll@{}}
  \parbox[t]{0.5\textwidth}{\raggedright\sf\small
    \tpagestyle{Title:}\\ \thetitle\bigskip\par
    \tpagestyle{Theme:}\\ Hej\bigskip\par
    \tpagestyle{Project Period:}\\ \thedate\bigskip\par
    \tpagestyle{Project Group:}\\ \the\projectgroup\bigskip\par
    \tpagestyle{Participant(s):}\\ \the\participants \bigskip\par
    \tpagestyle{Supervisor(s):}\\ \the\supervisor\bigskip\par
    \tpagestyle{Copies:}\\ How many copies\bigskip\par
    \tpagestyle{Page Numbers:}\\ \pageref{LastPage}\bigskip\par
    \tpagestyle{Date of Completion:}\\ The date
    \bigskip\\
    \textbf{Electronics and IT}\\
    Aalborg University\\
    \href{http://www.aau.dk}{http://www.aau.dk}} &
  \parbox[t]{0.5\textwidth}{%
  \tpagestyle{Abstract:}\bigskip\par
      Hej
  }
\end{tabular}
\vfill

\begin{center}
\includegraphics[width=0.5\textwidth]{style/aau_logo_en}    
\end{center}

\vfill

\noindent{\footnotesize\emph{The content of this report is freely available, but publication (with reference) may only be pursued due to agreement with the author.}}
}
\clearpage
}
  
  % -- Table of contents ------------------------------

\titlecontents{chapter}
[0em] % ie, 1.5em (chapter) + 2.3em
{}
{\aaufontbold\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{}\contentspage}
\dottedcontents{section}[1em]{\color{aaublue1}\aaufont}{2.9em}{1pc}
\dottedcontents{subsection}[2em]{\color{aaublue1}\aaufont}{3.3em}{1pc}

% center the toc heading
\renewcommand{\contentsname}{\centering\aaufontblack\color{aaublue1} Contents}



