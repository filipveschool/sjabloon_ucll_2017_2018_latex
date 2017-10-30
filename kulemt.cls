%%
%% This is file `kulemt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kulemt-src.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2012 by Luc Van Eycken <Luc.VanEycken@esat.kuleuven.be>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2001/06/01]
\ProvidesClass{kulemt}
    [2017/05/30 v1.9
     KU Leuven engineering master's thesis document class]

\def\kulemt@cls{kulemt}

\def\kulemt@error#1{%
  \ClassError\kulemt@cls{#1}{Exit, correct this error and rerun.}}
\def\kulemt@opt@missingpkg#1#2{\kulemt@error{%
    The option `#1' is ignored because\MessageBreak
    it requires the installation of the package `#2'}}
\def\kulemt@ifdutch{\protect\iflanguage{dutch}}
\@ifundefined{l@dutch}{\kulemt@error{%
    The language `dutch' is not available.\MessageBreak
    You must install Dutch hyphenation patterns}}{}
\def\kulemt@ifand#1{\expandafter\kulemt@ifand@ #1\and\@nil}
\def\kulemt@ifand@#1\and #2\@nil{%
  \if=\noexpand#2=\expandafter\@secondoftwo\else
    \expandafter\@firstoftwo\fi}

%-------------------------------------------------------------------

\RequirePackage{keyval}

%-------------------------------------------------------------------

\newcommand*\setup{%
  \kulemt@catcode@setup
  \kulemt@setup}

\@onlypreamble\setup
\def\kulemt@setup#1{%
  \setkeys{kulemt}{#1}%
  \kulemt@uncatcode@setup
  \kulemt@do@once@opts}

\def\kulemt@catcode@setup{%
  \csname extras\languagename\endcsname
  \kulemt@ifdutch{\catcode`\"\active}{}}

\def\kulemt@uncatcode@setup{%
  \csname noextras\languagename\endcsname
  \@makeother\"}

\def\kulemt@invalidate@key#1#2{%
  \define@key{kulemt}{#1}{\ClassWarning\kulemt@cls{%
      The key `#1' can only be used #2.\MessageBreak
      It is ignored}}}
  
\def\kulemt@keynovalue#1#2{%
  \define@key{kulemt}{#1}[]{%
    \def\@tempa{##1}\ifx\@tempa\@empty\else
      \PackageWarningNoLine\kulemt@cls{Value of option `#1' ignored}\fi
    #2}}

\def\kulemt@clskeys{}
\def\kulemt@clskey#1{%
  \edef\kulemt@clskeys{\kulemt@clskeys,#1}%
  \define@key{kulemt}{#1}}
\def\kulemt@clsopt#1{%
  \edef\kulemt@clskeys{\kulemt@clskeys,#1}%
  \kulemt@keynovalue{#1}}
\def\kulemt@process@ptions{%
  \@ifundefined{opt@\@currname.\@currext}{}%
   {\begingroup
    \toks@\expandafter\expandafter\expandafter{%
      \csname opt@\@currname.\@currext\endcsname}%
    \edef\CurrentOption{\the\toks@}%
    \toks@{}%
    \@for\CurrentOption:=\CurrentOption\do{%
      \@ifundefined{%
        KV@kulemt@\expandafter\kulemt@getkey\CurrentOption=\@nil}%
       {\ifx\@unusedoptionlist\@empty
          \global\let\@unusedoptionlist\CurrentOption
        \else
          \expandafter\expandafter\expandafter\gdef
          \expandafter\expandafter\expandafter\@unusedoptionlist
          \expandafter\expandafter\expandafter{%
            \expandafter\@unusedoptionlist
            \expandafter,\CurrentOption}%
        \fi}%
       {\toks@\expandafter{%
          \the\expandafter\toks@\expandafter,\CurrentOption}%
        \expandafter\kulemt@update@classoptions\CurrentOption=aa=\@nil
       }}%
    \edef\@tempa{\endgroup
      \noexpand\setkeys{kulemt}{\the\toks@}}%
    \@tempa
    \let\CurrentOption\@empty}%
  \@for\@tempa:=\kulemt@clskeys\do{%
    \expandafter\kulemt@invalidate@key\expandafter{\@tempa}{%
      as a class option}}}
\def\kulemt@getkey#1=#2\@nil{#1}
\def\kulemt@update@classoptions#1=#2#3=#4\@nil{%
  \def\@tempa{#3}\ifx\@tempa\@empty
    \def\@tempa##1,#1=##2,##3\@nil{##1,##3\@nil}%
    \def\@tempb,##1,\@nil{##1}%
    \xdef\@classoptionslist{\expandafter\expandafter\expandafter\@tempb
      \expandafter\@tempa\expandafter,\@classoptionslist,\@nil}%
  \fi}
\kulemt@clskey{master}{\lowercase{\edef\kulemt@opt@master{#1}}}
\def\kulemt@opt@master{}

%-------------------------------------------------------------------
%als je geen fontsize meegeeft zal standaard 11pt genomen worden
\kulemt@clsopt{10pt}{\def\kulemt@ptsize{0}}
\kulemt@clsopt{11pt}{\def\kulemt@ptsize{1}}
\def\kulemt@ptsize{1}

%-------------------------------------------------------------------

\kulemt@clsopt{openright}{\PassOptionsToClass{open}{memoir}}
\kulemt@clsopt{openany}{\PassOptionsToClass{openany}{memoir}}
\kulemt@clsopt{openleft}{\PassOptionsToClass{openleft}{memoir}}
\kulemt@clsopt{oneside}{\PassOptionsToClass{oneside}{memoir}}
\kulemt@clsopt{twoside}{\PassOptionsToClass{twoside}{memoir}}
\kulemt@clskey{bind}{\setlength\kulemt@bind{#1}}
\newdimen\kulemt@bind
\kulemt@bind\z@
\kulemt@clsopt{draft}{\PassOptionsToClass{draft}{memoir}}
\def\kulemt@babel@opt{english,dutch}
\kulemt@clsopt{dutch}{\def\kulemt@language{dutch}}
\kulemt@clsopt{english}{\def\kulemt@language{english}}
\def\kulemt@language{\kulemt@master@language}
\kulemt@clskey{extralanguage}{%
  \edef\@tempa{{,#1,}{,\kulemt@babel@opt,}}\expandafter\in@\@tempa
  \ifin@\else \edef\kulemt@babel@opt{#1,\kulemt@babel@opt}\fi}
\kulemt@clsopt{nomicrotype}{\kulemt@microtypefalse}
\newif\ifkulemt@microtype \kulemt@microtypetrue
\kulemt@clsopt{fleqn}{\PassOptionsToClass{fleqn}{memoir}}
\kulemt@clsopt{oldfontcommands}{%
  \PassOptionsToClass{oldfontcommands}{memoir}}
\gdef\kulemt@do@once@opts{}
\def\kulemt@add@once@opts#1#2#3{\g@addto@macro\kulemt@do@once@opts{%
    \ifx #2\@empty\else
      \kulemt@invalidate@key{#1}{once}%
      \def\@tempa{#3\let#2\@empty}%
      \expandafter\@tempa
    \fi}}
\define@key{kulemt}{masteroption}{\def\kulemt@opt@masteroption{#1}}
\def\kulemt@opt@masteroption{}
\def\kulemt@master@option{}
\kulemt@add@once@opts{masteroption}\kulemt@opt@masteroption{%
  \global\let\kulemt@master@option\@empty
  \ifx\kulemt@master@options@vl\relax
    \ifx\kulemt@opt@masteroption\@empty\else
      \kulemt@error{%
        The option `masteroption' is ignored because\MessageBreak
        your programme disallows a master's programme option on front pages}%
    \fi
  \else
    \@for\@tempa:=\kulemt@opt@masteroption\do{%
      \let\@tempc\@tempa
      \expandafter\kulemt@handle@mo\expandafter\kulemt@master@options
      \expandafter{%
        \expandafter\kulemt@add@mo@tempc\expandafter{\@tempa}}%
      \expandafter\g@addto@macro\expandafter\kulemt@master@option
        \expandafter{\@tempc,}}%
  \fi}
\def\kulemt@add@mo@tempc#1#2#3{%
  \lowercase{\def\@tempa{#1}}\def\@tempb{#2}\ifx\@tempa\@tempb
    \def\@tempc{#3}\fi}
\def\kulemt@handle@mo#1#2{%
  \expandafter\@tfor\expandafter\@tempd\expandafter:\expandafter=#1\do{%
    \expandafter\kulemt@handle@mo@\@tempd\@nil{#2}}}
\def\kulemt@handle@mo@ #1:#2\@nil #3{#3{#1}{#2}}
\RequirePackage[ascii]{inputenc}
\define@key{kulemt}{inputenc}{\def\kulemt@opt@inputenc{#1}}
\def\kulemt@opt@inputenc{}
\kulemt@add@once@opts{inputenc}\kulemt@opt@inputenc{%
  \inputencoding\kulemt@opt@inputenc}

%Hier wordt de key font aangemaakt
\define@key{kulemt}{font}{%
  \edef\@tempa{\zap@space#1 \@empty}%
  \expandafter\kulemt@set@font\@tempa::\@empty}
\def\kulemt@set@font#1:#2:#3\@empty{%
  \expandafter\let\expandafter\@tempa
    \csname kulemt@set@font@#1\endcsname
  \ifx\@tempa\relax
    \kulemt@error{Font `#1' is ignored because it is an unknown font}%
  \else \@tempa{#2}\fi}
\let\kulemt@loadfont@\@empty
\kulemt@add@once@opts{font}\kulemt@loadfont@{%
  \kulemt@loadfont@ \kulemt@loadmt}
\def\kulemt@set@font@cm#1{\let\kulemt@loadfont@\relax}
\def\kulemt@set@font@lm#1{%
  \IfFileExists{lmodern.sty}%
   {\def\kulemt@loadfont@{%
      \RequirePackage[T1]{fontenc}%
      \RequirePackage{lmodern}}}%
   {\kulemt@opt@missingpkg{font=lm}{lm}}}
   
%font palatino   
\def\kulemt@set@font@palatino#1{%
  \def\kulemt@loadfont@{%
    \RequirePackage[T1]{fontenc}%
    \RequirePackage[#1]{mathpazo}%
    \RequirePackage[scaled=.9]{helvet}}%
  \IfFileExists{lmodern.sty}{%
    \g@addto@macro\kulemt@loadfont@{%
      \renewcommand{\ttdefault}{lmtt}}}{}}

%font times  
\def\kulemt@set@font@times#1{%
  \def\kulemt@loadfont@{%
    \RequirePackage[T1]{fontenc}%
    \RequirePackage[#1]{mathptmx}%
    \RequirePackage[scaled=.9]{helvet}}%
  \IfFileExists{lmodern.sty}{%
    \g@addto@macro\kulemt@loadfont@{%
      \renewcommand{\ttdefault}{lmtt}}}{}}
	  
%font utopia
\def\kulemt@set@font@utopia#1{%
  \IfFileExists{fourier.sty}%
    {\def\kulemt@loadfont@{%
       \RequirePackage[T1]{fontenc}%
       \RequirePackage[#1]{fourier}%
       \RequirePackage[scaled=.9]{helvet}}%
     \IfFileExists{lmodern.sty}{%
       \g@addto@macro\kulemt@loadfont@{%
         \renewcommand{\ttdefault}{lmtt}}}{}}%
    {\kulemt@opt@missingpkg{font=utopia}{fourier}}}

%------------------------------------------------------------------------
	
\usepackage{sty/setupkeyvaluesdocument}

%------------------------------------------------------------------------

\define@key{kulemt}{acyear}{\def\kulemt@acyear{#1}}
\def\kulemt@acyear{}
\def\kulemt@acyear@t{%
  \ifx\kulemt@acyear\@empty
    \@tempcnta\year \ifnum\month<10 \advance\@tempcnta\m@ne \fi
    \@tempcntb\@tempcnta \advance\@tempcntb\@ne
    \xdef\kulemt@acyear{\the\@tempcnta\space -- \the\@tempcntb}%
  \fi
  \kulemt@acyear}

%------------------------------------------------------------------------

\usepackage{sty/setupkeyvaluesfilingcard}
  
%------------------------------------------------------------------------

\kulemt@keynovalue{coverpageonly}{\kulemt@coverpagetrue}
\newif\ifkulemt@coverpage


\kulemt@keynovalue{frontpagesonly}{\kulemt@frontpagestrue}
\newif\ifkulemt@frontpages


%------------------------------------------------------------------------

\kulemt@keynovalue{filingcard}{\kulemt@filingcardtrue}
\newif\ifkulemt@filingcard

%------------------------------------------------------------------------

\define@key{kulemt}{bindcover}{\ClassWarningNoLine\kulemt@cls{%
    Option `bindcover' is no longer supported}}
\def\kulemt@def@master#1{\@namedef{kulemt@m@#1}}
\newcommand*\kulemt@obsolete@master[2][]{%
  \@namedef{kulemt@m@#2\if &#1&\else .#1\fi}}
\def\kulemt@set@master#1#2#3#4#5#6#7#8#9\@nil{%
  \edef\kulemt@master@language{%
    \if N\@car#1\@nil dutch\else english\fi}%
  \kulemt@facnum=#2\relax
  \if F\@car#3\@nil \kulemt@filingcardtrue \fi
  \def\kulemt@master@colors{#4}%
  \def\kulemt@master@title{#5}%
  \def\kulemt@copyright@contact{#6}%
  \ifx\kulemt@copyright@contact\@empty
    \protected@edef\kulemt@copyright@contact{\kulemt@fac@copyright}%
  \fi
  \@ifnextchar[\kulemt@set@mo{\kulemt@set@mo[]}#7\@nil{#8}}
\def\kulemt@set@mo[#1]#2\@nil#3{%
  \def\kulemt@master@options@vl{#1}%
  \def\kulemt@master@options@v{-}%
  \ifx\kulemt@master@options@vl\kulemt@master@options@v
    \let\kulemt@master@options@vl\relax
    \let\kulemt@master@options@v\@empty
    \let\kulemt@master@options@o\@empty
    \let\kulemt@master@options\@empty
  \else
    \def\kulemt@master@options@v{#2}%
    \def\kulemt@master@options@o{#3}%
    \def\kulemt@master@options{#2#3}%
  \fi}
\def\kulemt@getcolors#1:#2:#3\@nil{%
  \edef\kulemt@color@bg{\if !#1!{white}\else [cmyk]{#1}\fi}%
  \edef\kulemt@color@fg{\if !#2!{black}\else [cmyk]{#2}\fi}}
\let\kulemt@div@master\@gobble
\let\kulemt@end@master@def\relax
\newcount\kulemt@facnum
\kulemt@facnum\@ne
\def\kulemt@fac@name{%
  \ifcase\kulemt@facnum \or
    Facult\kulemt@ifdutch{eit Ingenieurswetenschappen}%
                         {y of Engineering}%
  \fi}

%---------------------------------------------------------------------------------------------------

%hier wordt logo ingeladen

\def\kulemt@kulfac@logo#1{%
  %\edef\@tempa{[#1]{logokul\ifnum\kulemt@facnum=\@ne eng\fi}}%
  \edef\@tempa{[#1]{logoucll}}%
  \expandafter\includegraphics\@tempa}
\def\kulemt@fac@logo#1{}

\def\kulemt@kulfac2@logo#1{%
%\edef\@tempa{[#1]{logokul\ifnum\kulemt@facnum=\@ne eng\fi}}%
 \edef\@tempa{[#1]{associatiekuleuven}}%
 \expandafter\includegraphics\@tempa}
%\def\kulemt@fac@logo#1{}
 
%---------------------------------------------------------------------------------------------------
 
\def\kulemt@fac@copyright{%
  \ifnum\kulemt@facnum >\@ne
    \kulemt@ifdutch d{th}e \MakeLowercase{\noexpand\kulemt@paa@0}::%
  \else
    Faculteit Ingenieurswetenschappen, Kasteelpark Arenberg 1 bus 2200,
    B-3001 Heverlee:+32-16-321350:%
  \fi}

%---------------------------------------------------------------------------------------------------

\def\kulemt@paa@#1{%
  \ifcase #1%
    Teacher\kulemt@ifand\kulemt@teacher{\kulemt@ifdutch{en}{ers}}{}%
  \or
  	Assessor\kulemt@ifand\kulemt@assessor{\kulemt@ifdutch{en}s}{}%
  \or
  	Bedrij\kulemt@ifand\kulemt@company{\kulemt@ifdutch{oren}{ers}}{}%
  \or
  	Locatie\kulemt@ifand\kulemt@location{s}{}%  
  \or
  	\kulemt@ifdutch{Begeleider}{Assistant}%
  	\kulemt@ifand\kulemt@assistant{s}{}%
  \fi}
  
%---------------------------------------------------------------------------------------------------

%hier wordt de configuration file ingeladen

\providecommand*\kulemt@cfgfile{kulemt.cfg}
\ifx\kulemt@cfgfile\@empty\else
  \InputIfFileExists\kulemt@cfgfile{}{\kulemt@error{%
      Configuration file `\kulemt@cfgfile' is not installed}}
\fi

%---------------------------------------------------------------------------------------------------

\kulemt@process@ptions
\ifx\kulemt@opt@master\@empty
  \kulemt@error{Required option `master' missing}\fi
\expandafter\let\expandafter\@tempa
  \csname kulemt@m@\kulemt@opt@master \endcsname
\ifx\@tempa\relax
  \kulemt@error{%
    Unsupported value `\kulemt@opt@master' for option `master'}\fi
\expandafter\kulemt@set@master\@tempa{}{}{}\@nil
\@ifundefined{kulemt@cfgfile@m}{%
  \edef\kulemt@cfgfile@m{kulemt-\kulemt@opt@master.cfg}}{}
\ifx\kulemt@cfgfile@m\@empty\else
  \InputIfFileExists\kulemt@cfgfile@m{}{}
\fi
\ifx\kulemt@master@options@vl\@empty\else
  \ifx\kulemt@master@options@vl\relax\else
    \def\kulemt@check@masteroption{%
      \ifx\kulemt@master@option\@empty
        \kulemt@error{%
          When using option `master=\kulemt@opt@master',\MessageBreak
          you should specify at least one master's programme
          option.\MessageBreak
          Allowed options are: \kulemt@master@options@vl}%
      \fi}
    \AtBeginDocument{\kulemt@check@masteroption}
  \fi
\fi

%---------------------------------------------------------------------------------------------------

%hier wordt de memoir klasse ingeladen

\LoadClass[a4paper,1\kulemt@ptsize pt]{memoir}[2004/04/05]
\def\and{\\}
\let\andnext\and

%---------------------------------------------------------------------------------------------------

%hier wordt de talen package ingeladen

\RequirePackage[\kulemt@babel@opt]{babel}
%\RequirePackage[dutch,english]{babel}

\addto\captionsenglish{%
  \def\appendixtocname{Appendices}%
  \def\appendixpagename{Appendices}%
  \def\figurerefname{Figure}%
  \def\tablerefname{Table}%
  \def\pagerefname{page}%
  \def\partrefname{Part~}%
  \def\chapterrefname{Chapter~}%
  \def\listfiguresandtablesname{List of Figures and Tables}}

\begingroup
  \catcode`\"\active
  \@firstofone{\endgroup
    \addto\captionsdutch{%
      \def\appendixtocname{B"ylagen}%
      \def\appendixpagename{B"ylagen}%
      \def\figurerefname{figuur}%
      \def\tablerefname{tabel}%
      \def\pagerefname{pagina}%
      \def\partrefname{Deel~}%
      \def\chapterrefname{hoofdstuk~}%
      \def\listfiguresandtablesname{L"yst van figuren en tabellen}}}
\AtBeginDocument{\gdef\latinencoding{T1}%
  \ifx\cf@encoding\latinencoding\else \xdef\latinencoding{OT1}\fi}
\edef\kulemt@language{\kulemt@language}
\expandafter\main@language\expandafter{\kulemt@language}

\def\kulemt@selectmasterlanguage{%
  \expandafter\selectlanguage\expandafter{\kulemt@master@language}}

\def\kulemt@selecttextlanguage{%
  \expandafter\selectlanguage\expandafter{\kulemt@language}}
  
%---------------------------------------------------------------------------------------------------
  
\RequirePackage{graphicx}

%---------------------------------------------------------------------------------------------------

\RequirePackage{color}

%---------------------------------------------------------------------------------------------------

\def\kulemt@loadmt{%
  \@ifpackageloaded{microtype}{}{\RequirePackage{microtype}}}
\AtBeginDocument{\kulemt@loadmt}
\ifkulemt@microtype
  \ifpdf
    \IfFileExists{microtype.sty}{}{%
      \def\@tempa{the package is not installed}%
      \kulemt@microtypefalse}
  \else
    \def\@tempa{you're not using pdflatex in pdf mode}
    \kulemt@microtypefalse
  \fi
\else
  \def\@tempa{option `nomicrotype' was used}
\fi
\ifkulemt@microtype\else
  \let\kulemt@loadmt\relax
  \ClassWarningNoLine\kulemt@cls{%
    Package `microtype' not used because\MessageBreak
    \@tempa}%
\fi

%---------------------------------------------------------------------------------------------------

\def\kulemt@check@hyperref{%
  \@ifpackageloaded{hyperref}{%
    \@ifundefined{HyPsd@babel@dutch}{}{%
      \addto\HyPsd@babel@dutch{%
        \declare@shorthand{dutch}{"y}{ij}%
        \declare@shorthand{dutch}{"Y}{IJ}}}%
    \@ifpackageloaded{memhfixc}{}{%
      \RequirePackage{memhfixc}}%
    \providecommand*\theHsubfigure{\theHfigure.\arabic{subfigure}}%
    \providecommand*\theHsubtable{\theHtable.\arabic{subtable}}%
  }{}}

%---------------------------------------------------------------------------------------------------
  
\AtBeginDocument{\kulemt@check@hyperref}

%---------------------------------------------------------------------------------------------------

%A4 papier ==> 210mm width x 297 mm height ofwel 21x29cm widthxheight
%A4 papier ==> 8.3in x 11.7 in

\RequirePackage[T1,OT1]{fontenc}
\kulemt@do@once@opts
\ifcase\kulemt@ptsize\relax
%als je 10pt kiest
   \textwidth=10cm
  %\textwidth=13cm
  \textheight=20cm
\or
  %als je 11pt kiest
%standaardwaarde is \textwidth = 14cm
  \textwidth=14cm
  %\textwidth=18cm
  
%\textwidth=210mm => 21cm - 5cm links en rechts marge = 16cm

  %standaardwaarde is \textheight=215mm
  \textheight=215mm
  %\textheight=250mm
  %\textheight=297mm => 29.7cm - 5cm boven en onder marge = 24.7cm
\fi
\spinemargin\paperwidth
\advance\spinemargin -\textwidth
\foremargin\spinemargin
\advance\foremargin -\kulemt@bind\relax
\foremargin .\if@twoside 6\else 5\fi\foremargin
\advance\spinemargin -\foremargin
\marginparwidth=56pt
\marginparsep=1.2\onelineskip
\marginparpush=\onelineskip
\setulmargins{*}{*}{1.2}
\setheaderspaces{*}{\headsep}{*}
\checkthelayout\fixthelayout
\AtBeginDocument{\checkandfixthelayout}
\renewcommand*\clearforchapter{%
  \if@mainmatter
    \if@openleft
      \cleartoverso
    \else
      \if@openright
        \cleartorecto
      \else
        \clearpage
      \fi
    \fi
  \else
    \clearpage
  \fi}
  
%---------------------------------------------------------------------------------------------------

%\makeoddhead{ruled}{}{}{%
  %\if@mainmatter \rightmark \else \scshape\leftmark \fi}
  
\makeoddhead{ruled}{}{}{%
 	\if@mainmatter
 	\rightmark
 	\else
 	\scshape\leftmark
 	\fi}

%Dit is voor op de even pagina's in de footer dus vb. 2,4,8,16 enz.
\makeevenfoot{ruled}{%
%left
 	\if@mainmatter
 	Pagina \thepage \hspace{1pt} van \thelastpage
	 \else
	\thepage
	\fi}
%center
{}
%right
{%
	\if@mainmatter
	Filip Vanden Eynde~\copyright~2017
	\else
	\fi
}

\makeoddfoot{ruled}{%
	\if@mainmatter
		Filip Vanden Eynde~\copyright~2017
	\else
	\fi}
{}
{%
	\if@mainmatter
	%ok wordt gebruikt
	Pagina \thepage \hspace{1pt} van \thelastpage
	\else
    \thepage
	\fi
}

%\makefootrule{ruled}{\textwidth}{0.5pt}{0pt}

\pagestyle{ruled}

\copypagestyle{ruledfilip}{ruled}
\makefootrule{ruledfilip}{\textwidth}{0.5pt}{0pt}

\makepagestyle{nohead}
%originele footer values
%\makeevenfoot{nohead}{\thepage}{}{}
%\makeoddfoot{nohead}{}{}{\thepage}

%\makeevenfoot{nohead}{\thepage even nohead left}{even nohead center}{even nohead right}
%\makeoddfoot{nohead}{odd nohead left}{odd nohead center}{\thepage odd nohead right}
\makeevenfoot{nohead}{\thepage}{}{}
\makeoddfoot{nohead}{}{}{\thepage}
%\makefootrule{nohead}{\textwidth}{0.5pt}{0pt}

\aliaspagestyle{chapter}{nohead}
\maxsecnumdepth{subsection}
\maxtocdepth{section}
\def\tocheadstart{\clearforchapter\chapterheadstart}
\def\lofheadstart{\clearforchapter\chapterheadstart}
\def\lotheadstart{\clearforchapter\chapterheadstart}

%Styling voor elke eerste pagina van een nieuw hoofdstuk.
% Om er voor te zorgen dat de footer begint met de vorm "Pagina 1 van 22" bijvoorbeeld.
\makepagestyle{chapternohead}

\makefootrule{chapternohead}{\textwidth}{0.5pt}{0pt}

 \makeevenfoot{chapternohead}{%
	\if@mainmatter
	Pagina \thepage \hspace{1pt} van \thelastpage
	\else
	\thepage
	%Pagina \thepage \hspace{1pt} van \thelastpage
	\fi}
{}
{%
	\if@mainmatter
	%Filip Vanden Eynde~\copyright~2017
	\else
	\fi
}

%komt op de 1ste pagina van elk nieuw hoofdstuk en oneven pagina's
\makeoddfoot{chapternohead}{%
	\if@mainmatter
	Filip Vanden Eynde~\copyright~2017
	\else
	\fi}
{}
{%
	\if@mainmatter
	%ok wordt gebruikt
	Pagina \thepage \hspace{1pt} van \thelastpage
	\else
	\thepage
	\fi
}

%\makefootrule{chapternohead}{\textwidth}{0.5pt}{0pt}

\makepagestyle{afterbackmatter}
 \makeevenfoot{afterbackmatter}{%
 % OK
	Pagina \thepage \hspace{1pt} van \thelastpage
	}
{}
{}

\makeoddfoot{afterbackmatter}{}
{}
{%
	\thepage
}

\makefootrule{afterbackmatter}{\textwidth}{0.5pt}{0pt}


%wordt gebruikt voor normale nummering terug vanaf bibliografie
\makepagestyle{afterbackmatterf}
\makeevenfoot{afterbackmatterf}{%
 % OK
	%Pagina \thepage \hspace{1pt} van \thelastpage
	\thepage 
	}
{}
{}

\makeoddfoot{afterbackmatterf}{}
{}
{%
	\thepage
}
\makefootrule{afterbackmatterf}{0pt}{0pt}{0pt}


%-------------------------------------------------------------------------------------------------

\newcommand*\listoffiguresandtables{%
  \chapter\listfiguresandtablesname
  \def\@lofmaketitle{\section*\listfigurename}%
  \listoffigures*%
  \let\listoffigures\relax
  \def\@lotmaketitle{\section*\listtablename}%
  \listoftables*%
  \let\listoftables\relax}
\newcommand*\listfiguresandtablesname{List of Figures and Tables}

%-------------------------------------------------------------------------------------------------

\setrmarg{2.55em plus1fil}
\setlength{\cftbeforechapterskip}{1ex \@plus\p@}
\captionnamefont{\scshape}
\captiontitlefont{\upshape}
\captionstyle[\centering]{\centerlastline}
\DeclareFontFamily{T1}{kulemtfpf}{}
\DeclareFontShape{T1}{kulemtfpf}{m}{n}{<->phvr8t}{}
\DeclareFontShape{T1}{kulemtfpf}{m}{sc}{<->phvrc8t}{}
\DeclareFontShape{T1}{kulemtfpf}{m}{sl}{<->phvro8t}{}
\DeclareFontShape{T1}{kulemtfpf}{m}{it}{<->ssub*kulemtfpf/m/sl}{}
\DeclareFontShape{T1}{kulemtfpf}{bx}{n}{<->phvb8t}{}
\DeclareFontShape{T1}{kulemtfpf}{bx}{sc}{<->phvbc8t}{}
\DeclareFontShape{T1}{kulemtfpf}{bx}{sl}{<->phvbo8t}{}
\DeclareFontShape{T1}{kulemtfpf}{bx}{it}{<->ssub*kulemtfpf/bx/it}{}
\DeclareFontShape{T1}{kulemtfpf}{b}{n}{<->ssub*kulemtfpf/bx/n}{}
\DeclareFontShape{T1}{kulemtfpf}{b}{sc}{<->ssub*kulemtfpf/bx/sc}{}
\DeclareFontShape{T1}{kulemtfpf}{b}{sl}{<->ssub*kulemtfpf/bx/sl}{}
\DeclareFontShape{T1}{kulemtfpf}{b}{it}{<->ssub*kulemtfpf/bx/sl}{}
\def\kulemt@fpf@title{\fontsize\@xxvpt{30}\selectfont}
\def\kulemt@fpf@subtitle{\fontsize\@xviipt{22}\selectfont}
\def\kulemt@fpf@author{\fontsize\@xivpt{18}\selectfont}
\def\kulemt@fpf@txthead{\fontsize\@xiipt{14.5}%
  \fontseries\bfdefault\selectfont}
 % Dit zrgt ervoor dat het er vet uitziet
%\fontseries\bfdefault\selectfont
\def\kulemt@fpf@text{\fontsize\@xiipt{14}\selectfont}
\def\kulemt@fpf@banner{\fontsize\@xivpt{18}%
  \fontseries\bfdefault\selectfont}

%---------------------------------------------------------------------------------------------------
%tekst op voorpagina
\def\kulemt@master@text{
	Thesis
  \kulemt@ifdutch
    {voorgedragen tot het behalen van de graad van}%
    {submitted for the degree of}
  \kulemt@master@title
  \ifx\kulemt@master@option\@empty\else
    \def\@tempb{, }%
    \@for\@tempa:=\kulemt@master@option\do{%
      \ifx\@tempa\@empty\else
        \@tempb \def\@tempb{ \kulemt@ifdutch{en}{and} }%
        \@tempa
      \fi}%
  \fi}

\def\kulemt@master@texttwo{
	\kulemt@textsubject
	
	\kulemt@master@title
	\ifx\kulemt@master@option\@empty\else
	\def\@tempb{, }%
	\@for\@tempa:=\kulemt@master@option\do{%
		\ifx\@tempa\@empty\else
		\@tempb \def\@tempb{ \kulemt@ifdutch{en}{and} }%
		\@tempa
		\fi}%
	\fi}

\def\kulemt@master@textthree{%
\kulemt@textsubject	
}
  
%---------------------------------------------------------------------------------------------------

% Hier wordt alles bepaalt voor gegevens en tonen op beeld met dubbelpunt enz

\def\kulemt@paa@fp#1{%
  \begingroup
    \ifcase #1\relax
	  % Dit haalt de data uit de setup gegevens
      \let\@tempa\kulemt@teacher
    \or
    	\let\@tempa\kulemt@assessor
    \or
    	\let\@tempa\kulemt@assistant
	\or
    	\let\@tempa\kulemt@company
    \or
    	\let\@tempa\kulemt@location
 	\else
	    \let\@tempa\@empty
    \fi
    \ifx\@tempa\@empty\else
      \medskip \begingroup
	    % Deze lijn hieronder in commentaar zorgt dat de tekst op een nieuwe lijn wordt geplaatst
        %\kulemt@fpf@txthead \kulemt@paa@{#1}:\vskip 2\p@
        \kulemt@fpf@txthead \kulemt@paa@{#1}:
        
		%originele lijn
        %\kulemt@fpf@txthead \kulemt@paa@{#1}:\vskip 2\p@
		
      \endgroup \@tempa \par
    \fi
  \endgroup}

%---------------------------------------------------------------------------------------------------
  
\usepackage{sty/frontpage}

%---------------------------------------------------------------------------------------------------

\usepackage{sty/frontpagetwo}

% gedaan met voorpagina, naar nieuwe lege pagina met clearpage commando

%---------------------------------------------------------------------------------------------------

\let\maketitle\relax
\def\kulemt@contact@print{%
  \expandafter\kulemt@contact@scan\kulemt@copyright@contact:::\@nil}
\def\kulemt@contact@scan#1:#2:#3:#4\@nil{#1%
  \def\@tempa{#2}\def\@tempb{#3}%
  \ifx\@tempa\@empty
    \ifx\@tempb\@empty\else , \texttt{#3}\fi
  \else
    , #2%
    \ifx\@tempb\@empty\else
      \space o\kulemt@ifdutch{f via e-}{r by e}mail \texttt{#3}%
    \fi
  \fi}

%---------------------------------------------------------------------------------------------------

\usepackage{sty/makecopyrightpage}

%---------------------------------------------------------------------------------------------------
  
%laatste pagina fiche pagina

\usepackage{sty/makefilingcard}

%---------------------------------------------------------------------------------------------------

\g@addto@macro\document{\kulemt@frontpage
%	\g@addto@macro\document{\kulemt@frontpagetwo
  \ifkulemt@coverpage
    \def\@tempa{\end{document}}%
  \else
    \kulemt@copyrightpage
    \ifkulemt@frontpages
	    \def\@tempa{\end{document}}%
    \else
      \let\@tempa\frontmatter
    \fi
  \fi
  \@tempa}
\def\kulemt@error@mm{\kulemt@error{%
    You forgot to use \string\mainmatter}}
\expandafter\def\expandafter\mainmatter\expandafter{%
  \expandafter\let\expandafter\kulemt@error@mm\expandafter\relax
  \mainmatter}

\AtEndDocument{%
  \ifkulemt@coverpage\else
   % hier schakel je de fiche portfolio uit.
   % \ifkulemt@frontpages\else \kulemt@error@mm \fi
    %\ifkulemt@filingcard
     % \if@mainmatter \backmatter \fi
     % \kulemt@filingcard
   % \fi
  \fi}
  
%---------------------------------------------------------------------------------------------------

\newenvironment{preface}[1][\@author]%
 {\chapter\prefacename
  \def\kulemt@preface@{#1}}%
 {\par
  \ifx\kulemt@preface@\@empty\else
    \bigskip \raggedleft \itshape \kulemt@preface@
  \fi
  \vfill \clearpage}

\renewenvironment{abstract}%
 {\chapter\abstractname}%
 {\clearpage}
\newenvironment{abstract*}[1][\kulemt@master@language]%
 {\expandafter\selectlanguage\expandafter{#1}%
  \abstract}%
 {\endabstract}
 
%---------------------------------------------------------------------------------------------------
 
\endinput
%%
%% End of file `kulemt.cls'.
