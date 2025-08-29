%27/01/2025 by Sercan Cikintoglu
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tubitak}

\LoadClass[oneside]{report}

\usepackage{textpos}
\usepackage{fancyhdr}
\usepackage{pdflscape}
\usepackage{xcolor}
%%%%%%%%Font
\usepackage[T1]{fontenc}
%\usepackage[utf8]{inputenc}
\usepackage[scaled=0.92]{helvet} 
%\usepackage{uarial}
\usepackage[turkish,shorthands=off]{babel}
\renewcommand{\familydefault}{\sfdefault}
\usepackage[fontsize=11pt]{scrextend} %Birimi bp yaparsan wordle aynı oluyor ama small niyeyse sacmalıyor.
%%%%%%%%%%%%Geometry
\usepackage{setspace}
\usepackage[nobottomtitles]{titlesec}
\usepackage[skip=0.6\baselineskip]{parskip}
\usepackage[a4paper,headheight=1.5cm,headsep=0.5cm,
            top=3.0cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry}
\usepackage{indentfirst}
\setlength{\parindent}{15pt}            
\onehalfspacing
%\doublespacing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}
  {\normalfont\fontsize{11}{11}\center\bfseries\MakeUppercase}{\thechapter.}{1em}{}
\titleformat{\section}
  {\normalfont\fontsize{11}{11}\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont\fontsize{11}{11}\bfseries}{\thesubsection}{1em}{}
%\renewcommand*{\thesubsubsection}{\roman{subsubsection}.}
%\renewcommand*{\thesubsubsection}{\alph{subsubsection}}
\titleformat{\subsubsection}
  {\normalfont\fontsize{11}{11}\bfseries}{\thesubsubsection}{1em}{}

%\titlespacing\chapter{0pt}{0pt plus 0pt minus 0pt}{9pt plus 0pt minus 0pt}
\titlespacing*\chapter{0pt}{-13pt}{9pt}
\titlespacing\section{0pt}{12pt plus 0pt minus 0pt}{9pt plus 0pt minus 0pt}
\titlespacing\subsection{0pt}{12pt plus 0pt minus 0pt}{9pt plus 0pt minus 0pt}
\titlespacing\subsubsection{0pt}{12pt plus 0pt minus 0pt}{9pt plus 0pt minus 0pt}

%%%%%%%%%%%İcindekiler
\usepackage{titletoc}
\renewcommand{\contentsname}{İÇİNDEKİLER}

\renewcommand{\listtablename}{TABLO LİSTESİ}
\renewcommand{\listfigurename}{ŞEKİL LİSTESİ}

\titlecontents{chapter}[1.5em]
              {\bfseries}
              {\thecontentslabel.\hspace{1.0em}\MakeUppercase}{\MakeUppercase}{\titlerule*[1pc]{.}\contentspage}
%              {\contentslabel{1.5em}\MakeUppercase}
%              {\MakeUppercase}{\titlerule*{.}\contentspage}
%%%%%%%%%%%%%Figure ve Tablo
\usepackage{caption}
\renewcommand{\figurename}{Şekil}
\renewcommand{\tablename}{Tablo}

%\renewcommand{\thefigure}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{figure}}
%\DeclareCaptionFormat{llap}{\llap{#1#2}#3\par}
%\captionsetup{format=llap,labelsep=period,singlelinecheck=no}
\captionsetup [figure]{format=hang,labelfont=bf,font=singlespacing,font=small,labelsep=period,
position=bottom,justification=raggedright,singlelinecheck=false,aboveskip=12pt,belowskip=12pt}
\captionsetup [table]{format=hang,labelfont=bf,font=singlespacing,font=small,labelsep=period,
position=above,justification=raggedright,singlelinecheck=false,aboveskip=12pt,belowskip=12pt}


\makeatletter
\g@addto@macro\@floatboxreset{\centering}
\makeatother


%%%%%%%%%%Kaynakca
\definecolor{citeclr}{HTML}{3785D2}
\definecolor{eqclr}{HTML}{FF007F}
\usepackage[bookmarks, colorlinks, breaklinks, pdftitle={Tubitak 3501},pdfauthor={Sercan Cikintoglu}]{hyperref}
\hypersetup{citecolor=citeclr,linkcolor=eqclr}            
\usepackage[authoryear,sort&compress,round]{natbib}
\usepackage{url,doi}
\renewcommand{\bibsection}{\textbf{KAYNAKLAR}}
\renewcommand\chapterautorefname{Bölüm}
\renewcommand\sectionautorefname{Kısım}
\renewcommand\subsectionautorefname{Kısım}
\renewcommand\figureautorefname{Şekil}
\renewcommand\equationautorefname{Denklem}
%%%%%%%%%%%%%%%Pagestyle
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\cfoot{\vspace{2pt}\thepage}
\chead{\includegraphics{./tubitak.jpg}}
\lfoot{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\cfoot{\vspace{2pt}\thepage}
\chead{\includegraphics{./tubitak.jpg}}
\lfoot{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{mylandscape}{
\fancyhf{} %Clears the header/footer
\fancyhead[C]{}
\fancyfoot[L]{}
%\fancyhead[C]{
%\makebox[\textwidth][l]{
%\rlap{
%\smash{
%\raisebox{-4.87in}{
%\rotatebox{90}{\includegraphics{./tubitak.jpg}}
%}}}
%}}
%\fancyfoot[L]{% Footer
%\smash{
%\hspace{17.5cm}
%\rotatebox{90}{\small AP-GR-02 Güncelleme Tarihi 07/04/2020}}}
\fancyfoot[C]{
\makebox[\textwidth][r]{% Right
%  \rlap{
%  \hspace{.75cm}% Push out of margin by \footskip
%  \smash{% Remove vertical height
%  \raisebox{4.87in}{% Raise vertically
%  \rotatebox{90}{\small 3501BF-01 Güncelleme Tarihi: 30/09/2019}}}}
%
%   \rlap{
%   \hspace{.75cm}% Push out of margin by \footskip
%    \smash{% Remove vertical height
%    \raisebox{4.87in}{% Raise vertically
%    \rotatebox{90}{\thepage}}}}
    }}% Rotate counter-clockwise
\renewcommand{\headrulewidth}{0pt}% No header rule
\renewcommand{\footrulewidth}{0pt}% No footer rule
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hyphenation{fortran et-ki-le-şim-le-ri-ni yıl-dız yıl-dız-la-rı yıl-dız-la-rı-nı pa-ra-met-re-dir}
%%%%%%%%%%%%%KAPAK
\newcommand{\storeIn}[2]{\gdef#1{#2}}  %% Stores the second arg in the command specified by the first arg.

%\newcommand*{\baslik}[3]{
%  \storeIn{\baslikbir}{#1}
%  \storeIn{\baslikiki}{#2}
%  \storeIn{\baslikuc}{#3}
%}

\newcommand*{\baslik}[1]{  \storeIn{\baslikbir}{#1} }

\newcommand*{\programkod}[1]{\storeIn{\pkod}{#1}}
\newcommand*{\projeno}[1]{\storeIn{\pno}{#1}}
\newcommand*{\yurutucu}[1]{\storeIn{\supervisor}{#1}}
\newcommand*{\tarihyer}[2]{\storeIn{\tarih}{#1}\storeIn{\yer}{#2}}



\newcounter{arastirmacino}
\newcommand*{\addarastirmaci}[1]{
\listadd{\arastirmacilist}{#1}
\addtocounter{arastirmacino}{1}
}

\newcounter{danismanno}
\newcommand*{\adddanisman}[1]{
\listadd{\danismanlist}{#1}
\addtocounter{danismanno}{1}
}

\newcounter{bursiyerno}
\newcommand*{\addbursiyer}[1]{
\listadd{\bursiyerlist}{#1}
\addtocounter{bursiyerno}{1}
}


\newcommand*{\printpersonel}[1]{\noindent#1\\}
\newcommand*{\writearastirmaci}[2]
{
\Large
\ifnum\value{#1}>1
\underline{Araştırmacılar:}\\
\noindent\forlistloop{\printpersonel}{#2}
\else\ifnum\value{danismanno}>0
\noindent\underline{Araştırmacı:}\\
\forlistloop{\printpersonel}{#2}
\fi\fi
}

\newcommand*{\writedanisman}[2]
{
\Large
\ifnum\value{#1}>1
\noindent\underline{Danışmanlar:}\\
\forlistloop{\printpersonel}{#2}
\else\ifnum\value{danismanno}>0
\noindent\underline{Danışman:}\\
\forlistloop{\printpersonel}{#2}
\fi\fi
}

\newcommand*{\writebursiyer}[2]
{
\Large
\ifnum\value{#1}>1
\noindent\underline{Bursiyerler:}\\
\forlistloop{\printpersonel}{#2}
\else\ifnum\value{danismanno}>0
\noindent\underline{Bursiyer:}\\
\forlistloop{\printpersonel}{#2}
\fi\fi
}


\newcommand*{\makekapak}[0]{
%\thispagestyle{empty}
\begin{textblock*}{14cm}(1cm,1.5cm)
\begin{singlespace} 
\begin{center}
{\LARGE
\textbf{
\baslikbir \\}
%\baslikiki \\
%\baslikuc  \\ }
\vspace*{1.5cm}

\textbf{Program Kodu:} \pkod\\
\vspace*{0.8cm}
\textbf{Proje No:} \pno\\
\vspace*{1.5cm}
Proje Yürütücüsü:\\
\textbf{\supervisor}
}
\end{center}
\vspace*{2cm}
\ifnum\value{arastirmacino}>0
\writearastirmaci{arastirmacino}{\arastirmacilist}
\fi

\ifnum\value{danismanno}>0
\writedanisman{danismanno}{\danismanlist}
\fi

\ifnum\value{bursiyerno}>0
\writebursiyer{bursiyerno}{\bursiyerlist}
\fi
\end{singlespace}
\end{textblock*}
\vspace*{\fill}
\begin{center}
\tarih\\
\yer
\end{center}
}
%%%%%%%%%%%%%%%%%%Ozet
\NewDocumentEnvironment{onsoz}{}{
\chapter*{Önsöz}
\begin{singlespace}
}
{
\vspace*{12pt}
\raggedleft\supervisor\\
\yer, \tarih 
\end{singlespace}
}



%%%%%%%%%%%%%%%%%%Ozet
\NewDocumentEnvironment{ozet}{m}{
\chapter*{Özet}
\addcontentsline{toc}{chapter}{Özet}
\begin{singlespace}
}
{
\\
%\vspace*{12pt}

\noindent\textbf{Anahtar kelimeler: } #1
\end{singlespace}
}
%%%%%%%%%%%%%%%%%%Summary
\NewDocumentEnvironment{summary}{m}{
\chapter*{Summary}
\addcontentsline{toc}{chapter}{Summary}
\begin{singlespace}
}
{
\\
%\vspace*{12pt}

\noindent\textbf{Keywords: } #1
\end{singlespace}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{pgfmath}  
\usepackage{xstring}  
\usepackage{refcount} 
\usepackage{ifthen}




\newcommand{\refte}[1]{%
  \IfSubStr{\getrefnumber{#1}}{.}{%
    \StrBehind{\getrefnumber{#1}}{.}[\eqnum]}%     % Extract part after dot
  { \def\eqnum{\getrefnumber{#1}} }%   
  \ifx\eqnum\empty%
   \autoref{#1}'te
  \else%
  \pgfmathparse{int(mod(\eqnum , 10))}% Extract last digit
  \let\lastdigit\pgfmathresult%
  \pgfmathparse{int(mod(\eqnum , 100))} % Extract last digit
  \let\lasttwodigit\pgfmathresult%
  \autoref{#1}'%
  \ifnum\lastdigit=0%
      \ifnum\lasttwodigit=0 de%
      \else\ifnum\lasttwodigit=10 da%
      \else\ifnum\lasttwodigit=20 de%
      \else\ifnum\lasttwodigit=30 da%
      \else\ifnum\lasttwodigit=40 ta%
      \else\ifnum\lasttwodigit=50 de%
      \else\ifnum\lasttwodigit=60 ta%
      \else\ifnum\lasttwodigit=70 te%
      \else\ifnum\lasttwodigit=80 de%
      \else\ifnum\lasttwodigit=90 da%
      \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \else\ifnum\lastdigit=1 de%
  \else\ifnum\lastdigit=2 de%
  \else\ifnum\lastdigit=3 te%
  \else\ifnum\lastdigit=4 te%
  \else\ifnum\lastdigit=5 te%
  \else\ifnum\lastdigit=6 da%
  \else\ifnum\lastdigit=7 de%
  \else\ifnum\lastdigit=8 de%
  \else\ifnum\lastdigit=9 da%
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
\fi
}

\newcommand{\refin}[1]{%
  \IfSubStr{\getrefnumber{#1}}{.}{%
    \StrBehind{\getrefnumber{#1}}{.}[\eqnum]}%     % Extract part after dot
  { \def\eqnum{\getrefnumber{#1}} }%   
  \ifx\eqnum\empty
   \autoref{#1}'in
  \else
  \pgfmathparse{int(mod(\eqnum , 10))}% % Extract last digit
  \let\lastdigit\pgfmathresult%
  \autoref{#1}'%
  \ifnum\lastdigit=0%
      \pgfmathparse{int(mod(\eqnum , 100))}% % Extract last digit
      \let\lasttwodigits\pgfmathresult%
      \ifnum\lasttwodigits=0 ün%
      \else\ifnum\lasttwodigits=10 un% 
      \else\ifnum\lasttwodigits=20 nin%
      \else\ifnum\lasttwodigits=30 un%
      \else\ifnum\lasttwodigits=40 ın%
      \else\ifnum\lasttwodigits=50 nin%
      \else\ifnum\lasttwodigits=60 ın%
      \else\ifnum\lasttwodigits=70 in%
      \else\ifnum\lasttwodigits=80 nin%
      \else\ifnum\lasttwodigits=90 nın%
      \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi 
  \else\ifnum\lastdigit=1 in%
  \else\ifnum\lastdigit=2 nin%
  \else\ifnum\lastdigit=3 ün%
  \else\ifnum\lastdigit=4 ün%
  \else\ifnum\lastdigit=5 in%
  \else\ifnum\lastdigit=6 nın%
  \else\ifnum\lastdigit=7 nin%
  \else\ifnum\lastdigit=8 in%
  \else\ifnum\lastdigit=9 un%
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
\fi
}


\newcommand{\refi}[1]{%
  \IfSubStr{\getrefnumber{#1}}{.}{%
    \StrBehind{\getrefnumber{#1}}{.}[\eqnum]}%     % Extract part after dot
  { \def\eqnum{\getrefnumber{#1}} }%   
  \ifx\eqnum\empty
   \autoref{#1}'i
  \else
  \pgfmathparse{int(mod(\eqnum , 10))}% % Extract last digit
  \let\lastdigit\pgfmathresult%
  \autoref{#1}'%
  \ifnum\lastdigit=0%
      \pgfmathparse{int(mod(\eqnum , 100))}% % Extract last digit
      \let\lasttwodigits\pgfmathresult%
      \ifnum\lasttwodigits=0 ü%
      \else\ifnum\lasttwodigits=10 u% 
      \else\ifnum\lasttwodigits=20 yi%
      \else\ifnum\lasttwodigits=30 u%
      \else\ifnum\lasttwodigits=40 ı%
      \else\ifnum\lasttwodigits=50 yi%
      \else\ifnum\lasttwodigits=60 ı%
      \else\ifnum\lasttwodigits=70 i%
      \else\ifnum\lasttwodigits=80 i%
      \else\ifnum\lasttwodigits=90 ı%
      \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi % 
  \else\ifnum\lastdigit=1 i%
  \else\ifnum\lastdigit=2 yi%
  \else\ifnum\lastdigit=3 ü%
  \else\ifnum\lastdigit=4 ü%
  \else\ifnum\lastdigit=5 i%
  \else\ifnum\lastdigit=6 yı%
  \else\ifnum\lastdigit=7 yi%
  \else\ifnum\lastdigit=8 i%
  \else\ifnum\lastdigit=9 u%
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
\fi
}


\newcommand{\refe}[1]{%
  \IfSubStr{\getrefnumber{#1}}{.}{%
    \StrBehind{\getrefnumber{#1}}{.}[\eqnum]}%     % Extract part after dot
  { \def\eqnum{\getrefnumber{#1}} }%   
  \ifx\eqnum\empty%
   \autoref{#1}'e%
  \else%
  \pgfmathparse{int(mod(\eqnum , 10))}% % Extract last digit
  \let\lastdigit\pgfmathresult%
  \autoref{#1}'%
  \ifnum\lastdigit=0%
      \pgfmathparse{int(mod(\eqnum , 100))}% % Extract last digit
      \let\lasttwodigits\pgfmathresult%
      \ifnum\lasttwodigits=0 e%
      \else\ifnum\lasttwodigits=10 a% 
      \else\ifnum\lasttwodigits=20 ye%
      \else\ifnum\lasttwodigits=30 a%
      \else\ifnum\lasttwodigits=40 a%
      \else\ifnum\lasttwodigits=50 ye%
      \else\ifnum\lasttwodigits=60 a%
      \else\ifnum\lasttwodigits=70 e%
      \else\ifnum\lasttwodigits=80 e%
      \else\ifnum\lasttwodigits=90 a%
      \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \else\ifnum\lastdigit=1 e%
  \else\ifnum\lastdigit=2 ye%
  \else\ifnum\lastdigit=3 e%
  \else\ifnum\lastdigit=4 e%
  \else\ifnum\lastdigit=5 e%
  \else\ifnum\lastdigit=6 ya%
  \else\ifnum\lastdigit=7 ye%
  \else\ifnum\lastdigit=8 e%
  \else\ifnum\lastdigit=9 a%
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \fi
}

\newcommand{\reften}[1]{%
  \IfSubStr{\getrefnumber{#1}}{.}{%
    \StrBehind{\getrefnumber{#1}}{.}[\eqnum]}%     % Extract part after dot
  { \def\eqnum{\getrefnumber{#1}} }%   
  \ifx\eqnum\empty%
   \autoref{#1}'ten%
  \else%
  \pgfmathparse{int(mod(\eqnum , 10))}% % Extract last digit
  \let\lastdigit\pgfmathresult%
  \autoref{#1}'%
  \ifnum\lastdigit=0% 
      \pgfmathparse{int(mod(\eqnum , 100))}% % Extract last digit
      \let\lasttwodigits\pgfmathresult%
      \ifnum\lasttwodigits=0 dan%
      \else\ifnum\lasttwodigits=10 dan% 
      \else\ifnum\lasttwodigits=20 den%
      \else\ifnum\lasttwodigits=30 dan%
      \else\ifnum\lasttwodigits=40 tan%
      \else\ifnum\lasttwodigits=50 den%
      \else\ifnum\lasttwodigits=60 tan%
      \else\ifnum\lasttwodigits=70 ten%
      \else\ifnum\lasttwodigits=80 den%%
      \else\ifnum\lasttwodigits=90 dan%
      \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi%
  \else\ifnum\lastdigit=1 den%
  \else\ifnum\lastdigit=2 den%
  \else\ifnum\lastdigit=3 ten%
  \else\ifnum\lastdigit=4 ten%
  \else\ifnum\lastdigit=5 ten%
  \else\ifnum\lastdigit=6 dan%
  \else\ifnum\lastdigit=7 den%
  \else\ifnum\lastdigit=8 den%
  \else\ifnum\lastdigit=9 dan%
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi%
\fi%
}
