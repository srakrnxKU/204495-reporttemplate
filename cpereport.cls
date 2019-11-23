\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpereport}[Kasetsart University Computer Engineering Project report template]

% Pass arguments
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

% Load classes
\LoadClass[titlepage]{report}

% Custom settings
% Thai language support
\RequirePackage{xltxtra} 
\XeTeXlinebreaklocale "th_TH"

% Typeface
\RequirePackage{polyglossia}
\setdefaultlanguage{thai}
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
\setmainfont{Laksaman}
\setmonofont{Tlwg Typist}
\newfontfamily{\thaifont}[Script=Thai]{Laksaman}

% Typography
\RequirePackage{indentfirst}
\setlength{\parindent}{0.5in}
\renewcommand{\normalsize}{\fontsize{11pt}{16}\selectfont}
\renewcommand\large{\@setfontsize\large{13pt}{18}}
\renewcommand\Large{\@setfontsize\Large{15pt}{20}}
\renewcommand\LARGE{\@setfontsize\LARGE{17pt}{22}}

\RequirePackage{titlesec}
\titleformat{\chapter}[display]{\centering \large \bfseries}{\chaptername\ \thechapter}{0pt}{}
\titleformat{\section}[hang]{\bfseries}{\thesection\ }{0pt}{}
\titlespacing*{\chapter}{0pt}{0.5in}{25pt}
\titlespacing*{name=\chapter,numberless}{0pt}{0pt}{25pt}

% Margins
\RequirePackage[left=1.5in,right=1in,top=1.5in,bottom=1in]{geometry}

% Page numbering
\RequirePackage{fancyhdr}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\lhead{}
\chead{}
\rhead{\thepage}
\lfoot{}
\cfoot{}
\rfoot{}
\pagestyle{fancy}
\fancypagestyle{plain}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \lhead{}
    \chead{}
    \rhead{\thepage}
    \lfoot{}
    \cfoot{}
    \rfoot{}
}

% Table of Contents
\RequirePackage{titletoc}
\setcounter{tocdepth}{1} 
\titlecontents{section}[4em]{}{\contentslabel[\chaptername\ \thecontentslabel]{4em}}{\hspace*{-4em}}{\titlerule*[1pc]{.}\contentspage}
\titlecontents{figure}[4em]{}{\contentslabel[\figurename\ \thecontentslabel]{4em}}{\hspace*{-4em}}{\titlerule*[1pc]{.}\contentspage}
\titlecontents{table}[4em]{}{\contentslabel[\tablename\ \thecontentslabel]{4em}}{\hspace*{-4em}}{\titlerule*[1pc]{.}\contentspage}

% Table and Figure captions
\RequirePackage{caption}

% Theorems
\RequirePackage{amsthm}
\theoremstyle{definition}
\newtheorem{definition}{บทนิยาม}[section]
\endinput
