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
\setmainfont{Laksaman}
\setmonofont{Tlwg Typist}
\newfontfamily\thaifont{Laksaman}
\newfontfamily\thaifontsf{Laksaman}

% Languages
\RequirePackage{polyglossia}
\setdefaultlanguage{thai}

% Typography
\RequirePackage{indentfirst}
\setlength{\parindent}{0.5in}
\renewcommand{\normalsize}{\fontsize{10pt}{12}\selectfont}
\renewcommand\large{\@setfontsize\large{12pt}{14}}
\renewcommand\Large{\@setfontsize\Large{14pt}{16}}
\renewcommand\LARGE{\@setfontsize\LARGE{16pt}{18}}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\large \bfseries}{\thesection.\ }{0pt}{}
\titleformat{\subsection}[hang]{\large \bfseries}{\thesubsection\ }{0pt}{}
\titleformat{\subsubsection}[hang]{\large \bfseries}{\thesubsubsection\ }{0pt}{}
% \titlespacing*{\chapter}{0pt}{0.5in}{25pt}
% \titlespacing*{name=\chapter,numberless}{0pt}{0pt}{25pt}

\makeatletter         
\renewcommand\maketitle{
{\raggedright % Note the extra {
\begin{center}
{\Huge \bfseries \sffamily \@title }\\[4ex] 
{\Large  \@author}\\[4ex] 
\@date\\[8ex]
\end{center}}} % Note the extra }
\makeatother

% Margins
\RequirePackage[left=21mm,right=29mm,top=21mm,bottom=29mm]{geometry}
\setlength{\columnsep}{6mm} 