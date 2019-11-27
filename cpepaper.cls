\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpepaper}[Kasetsart University Computer Engineering Project technical paper template]

% Pass arguments
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

% Load classes
\LoadClass{article}

% Custom settings
% Thai language support
\RequirePackage{xltxtra} 
\XeTeXlinebreaklocale "th_TH"

% Typeface
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
\setsansfont{Laksaman}
\setmonofont{Tlwg Typist}
\newfontfamily\thaifont{Kinnari}
\newfontfamily\thaifontsf{Laksaman}
\renewcommand{\familydefault}{\sfdefault}

% Languages
\RequirePackage{polyglossia}
\setdefaultlanguage{thai}

% Typography
\RequirePackage{indentfirst}
\setlength{\parindent}{0.5in}
\renewcommand{\normalsize}{\fontsize{10pt}{16pt}\selectfont}
\renewcommand\large{\@setfontsize\large{12pt}{14pt}}
\renewcommand\Large{\@setfontsize\Large{14pt}{16pt}}
\renewcommand\LARGE{\@setfontsize\LARGE{16pt}{18pt}}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\large \bfseries}{\thesection.\hspace{0.5cm}}{0pt}{}
\titleformat{\subsection}[hang]{\large \bfseries}{\thesubsection\hspace{0.5cm}}{0pt}{}
\titleformat{\subsubsection}[hang]{\large \bfseries}{\thesubsubsection\hspace{0.5cm}}{0pt}{}
% \titlespacing*{\chapter}{0pt}{0.5in}{25pt}
% \titlespacing*{name=\chapter,numberless}{0pt}{0pt}{25pt}

% Margins
\RequirePackage[left=21mm,right=21mm,top=29mm,bottom=29mm]{geometry}
\RequirePackage{multicol}
\setlength{\columnsep}{6mm} 

% Title
\newcommand\entitle[1]{\renewcommand\@entitle{#1}}
\newcommand\@entitle{\@latex@error{No \noexpand\entitle given}\@ehc}

\makeatletter
\renewcommand*{\maketitle}{%
    \begin{center}
        \fontsize{14pt}{20pt}\selectfont
        \textbf{\@title \\ \@entitle}
        \par
    \end{center}
    \vskip 2cm
}
\makeatother
