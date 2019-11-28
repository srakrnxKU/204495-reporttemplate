\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpepaper}[Kasetsart University Computer Engineering Project technical paper template]

% Pass arguments
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

% Load classes
\LoadClass[a4paper,compsoc,conference]{IEEEtran}

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

% Margins
%\RequirePackage[left=21mm,right=21mm,top=29mm,bottom=29mm]{geometry}
\RequirePackage{multicol}
\setlength{\columnsep}{6mm} 
