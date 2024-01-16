\LoadClass[aspectratio=43]{beamer}

\RequirePackage{tikz,textpos,bbm,caption,adjustbox,tabularx,booktabs,appendixnumberbeamer}
\usepackage{pifont}

\usepackage{xcolor}
\PassOptionsToPackage{dvipsnames,table}{xcolor}

% set up hyperref
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}
\definecolor{arsenic}{rgb}{0.23, 0.27, 0.29}
\definecolor{aurometalsaurus}{rgb}{0.43, 0.5, 0.5}
\definecolor{bazaar}{rgb}{0.6, 0.47, 0.48}
\definecolor{burgundy}{rgb}{0.5, 0.0, 0.13}
\definecolor{cadet}{rgb}{0.33, 0.41, 0.47}
\definecolor{coolblack}{rgb}{0.0, 0.18, 0.39}
\usepackage{hyperref}
\hypersetup{colorlinks, linkcolor = coolblack, urlcolor  = coolblack, citecolor = coolblack}
\setbeamercolor{normal text}{fg=black}
\setbeamercolor{item}{fg=coolblack}
\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{section page}{fg=black}
\setbeamercolor{subtitle}{fg=black}
\setbeamercolor{author}{fg=black}
\setbeamercolor{institute}{fg=black}
\setbeamercolor{date}{fg=black}
\setbeamercolor{title}{fg=burgundy}
\setbeamercolor{frametitle}{fg=burgundy}
\setbeamertemplate{frametitle}[default][center]
\setbeamerfont{frametitle}{series=\bfseries}
\setbeamercolor{part title}{fg=black}
\setbeamercolor{section title}{fg=burgundy}
\setbeamercolor{section name}{fg=burgundy}
\setbeamercolor{section in head/foot}{fg=black}
\setbeamercolor{block title}{fg=black}
\setbeamercolor{button}{fg=white,bg=coolblack}
\setbeamercolor{caption name}{fg=coolblack}

\usepackage[utf8]{inputenc} 
\usetheme{default}
\usecolortheme{dove}


% No slide counting for back-up slides
\newcommand{\backupbegin}{
   \newcounter{finalframe}
   \setcounter{finalframe}{\value{framenumber}}
}
\newcommand{\backupend}{
   \setcounter{framenumber}{\value{finalframe}}
}

% change font
\usepackage[scaled=.90]{helvet} 



% Date
\usepackage{datetime}
\newdateformat{monthyeardate}{%
  \monthname[\THEMONTH], \THEYEAR}

%gets rid of bottom navigation bars
\setbeamertemplate{navigation symbols}{}


% Change items
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{itemize subitem}{$-$}
\setbeamertemplate{enumerate items}[default]
\setbeamertemplate{sections/subsections in toc}[square]

\setbeamertemplate{background canvas}[vertical shading]

\setbeamertemplate{footline}{
    \hbox{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=3ex,dp=1.5ex,leftskip=2ex,rightskip=2ex]{page footer}%
        \usebeamerfont{section in head/foot}%
        \insertsectionnavigationhorizontal{.9\paperwidth}{\hskip0pt plus1fill}{\hskip0pt plus1fill} \hfill
        \insertframenumber{} / \inserttotalframenumber
    \end{beamercolorbox}}%
}

\setbeamertemplate{background}{
	\begin{tikzpicture}
		\useasboundingbox (0,0) rectangle (\the\paperwidth,\the\paperheight);
		\ifnum\thepage>1\relax%
		\fill[color=white] (0,0) rectangle (\the\paperwidth,\the\paperheight);
		\fill[color=white] (0,10) rectangle(\the\paperwidth,8);
		\else % Title page
		\fi
	\end{tikzpicture}
}

\makeatletter
% Prevent Figure template
\setbeamertemplate{caption}{\raggedright\insertcaption\par}

% Include PDFs
\usepackage{pdfpages}

% Graph
\usepackage{graphicx}
%\usepackage{subcaption}
\usepackage{tikz}
\usetikzlibrary{decorations.text}
\usetikzlibrary{positioning,arrows}
\usepackage{subfig}

% tables
\usepackage{booktabs}
\usepackage{tabularx}
\newcolumntype{b}{X}
\newcolumntype{s}{>{\hsize=.2\hsize}X}
\usepackage{multirow}

% math
\usepackage{bbm}
\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}

%References
\usepackage[style=authoryear,backend=biber]{biblatex}

\renewcommand*{\citesetup}{\color{coolblack}}

% Add an extra slide at the beginning of each section
\AtBeginSection[]{
  \begin{frame}
  \vfill
  \centering
  \begin{beamercolorbox}[sep=8pt,center,shadow=true,rounded=true]{title}
    \usebeamerfont{title}\insertsectionhead\par%
  \end{beamercolorbox}
  \vfill
  \end{frame}
}