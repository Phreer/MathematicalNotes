%# -*- coding: utf-8-unix -*-

%% phreebook.cls
%% date: 2019/12/06
%% author: Phree Liu
%% LaTeX template for writting books

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{phreebook}[2019/12/06 v0.10 Phree's LaTeX template for writting books]
\def\version{v0.10}

\LoadClass[b5paper]{book}

\RequirePackage[english]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[inline]{enumitem}

% Math support
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm,mathrsfs}
\RequirePackage{commath}
\RequirePackage{upgreek} % for \uppi

% For plots
\RequirePackage{graphicx}
\RequirePackage{import}
\RequirePackage{xifthen}
\RequirePackage{pdfpages}
\RequirePackage{transparent}

\newcommand{\incfig}[3]{%
    \def\svgwidth{#1}
    \import{#2/figure/}{#3.pdf_tex}
}

\RequirePackage{bm} % introduce \bm to the environment of equation
\RequirePackage{bbm}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{enumitem}
\RequirePackage{sidenotes}
\RequirePackage{xspace}
\RequirePackage{mdframed} % Add frames to theorem environments

\RequirePackage{hyperref}

% Note: geometry shold be loaded after hyperref
\RequirePackage{geometry}
\geometry{left=1.5cm,right=3cm,top=2cm,bottom=1.5cm}
% Add a period to the end of an abbreviation unless there's one
% already, then \xspace.
\makeatletter
\DeclareRobustCommand\onedot{\futurelet\@let@token\@onedot}
\def\@onedot{\ifx\@let@token.\else.\null\fi\xspace}

\def\eg{\emph{e.g}\onedot} \def\Eg{\emph{E.g}\onedot}
\def\ie{\emph{i.e}\onedot} \def\Ie{\emph{I.e}\onedot}
\def\cf{\emph{c.f}\onedot} \def\Cf{\emph{C.f}\onedot}
\def\etc{\emph{etc}\onedot} \def\vs{\emph{vs}\onedot}
\def\wrt{w.r.t\onedot} \def\dof{d.o.f\onedot}
\def\etal{\emph{et al}\onedot} \def\resp{resp\onedot}
\def\apri{\emph{a priori}} \def\apost{\emph{a posterior}} 
\makeatother

\setenumerate[1]{itemsep=0pt, label=(\arabic*)}
\setitemize[1]{itemsep=0pt}

%% Short commands
\newcommand*\diff{\mathop{}\!\mathrm{d}}
\newcommand{\me}{\mathrm{e}}
\newcommand{\mi}{\mathrm{i}}

\newcommand*\conj[1]{\overline{#1}}

\newcommand{\fA}{\mathbf{A}}
\newcommand{\fR}{\mathbf{R}}
\newcommand{\fS}{\mathbf{S}}
\newcommand{\fI}{\mathbf{I}}
\newcommand{\fC}{\mathbf{C}}
\newcommand{\fF}{\mathbf{F}}

\newcommand{\bK}{\mathbb{K}}
\newcommand{\br}{\mathbb{r}}
\newcommand{\bR}{\mathbb{R}}
\newcommand{\bQ}{\mathbb{Q}}
\newcommand{\bz}{\mathbb{z}}
\newcommand{\bZ}{\mathbb{Z}}
\newcommand{\bc}{\mathbb{c}}
\newcommand{\bC}{\mathbb{C}}
\newcommand{\bn}{\mathbb{n}}
\newcommand{\bN}{\mathbb{N}}
\newcommand{\bNs}{\mathbb{N}^\ast}
\newcommand{\bs}{\mathbb{S}}

\newcommand{\cB}{\mathcal{B}}
\newcommand{\cb}{\mathcal{b}}
\newcommand{\cn}{\mathcal{n}}
\newcommand{\cN}{\mathcal{N}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\cR}{\mathcal{R}}
\newcommand{\cD}{\mathcal{D}}
\newcommand{\cA}{\mathcal{A}}
\newcommand{\cL}{\mathcal{L}}
\newcommand{\cF}{\mathcal{F}}
\newcommand{\cS}{\mathcal{S}} 
\newcommand{\cT}{\mathcal{T}} 
\newcommand{\cE}{\mathcal{E}}
\newcommand{\cH}{\mathcal{H}}
\newcommand{\cG}{\mathcal{G}}

\newcommand{\sB}{\mathscr{B}}
\newcommand{\sN}{\mathscr{N}}
\newcommand{\sG}{\mathscr{G}}

\newcommand{\tX}{\tilde{X}}
\newcommand{\tx}{\tilde{x}}
\newcommand{\ty}{\tilde{y}}
\newcommand{\td}{\tilde{d}}

\newcommand{\wdot}{\mathord{\cdot}}

%% Math operators
\DeclarePairedDelimiterX{\inp}[2]{\langle}{\rangle}{#1, #2}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\closure}{cl}
\DeclareMathOperator{\interior}{int}
\DeclareMathOperator{\co}{co}
\DeclareMathOperator{\esssup}{ess\,sup}
\DeclareMathOperator{\mspan}{span}
\DeclareMathOperator{\sgn}{sgn}


\theoremstyle{definition}
\newtheorem{defn}{Definition}[chapter]
\newtheorem{example}{Example}[chapter]
\theoremstyle{plain}
\newmdtheoremenv{thm}{Theorem}[chapter]
\newtheorem{axiom}{Axiom}[chapter]
\newtheorem{cor}{Corollary}[chapter]
\newtheorem{prop}{Proposition}[chapter]
\newtheorem{lemma}{Lemma}[chapter]
\theoremstyle{remark}
\newtheorem{rmk}{Remark}
