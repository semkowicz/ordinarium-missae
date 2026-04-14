\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{missa}[2026-04-14 Missa class]

%%% Base class.

\LoadClass[12pt,a4paper]{report}

%%% Dependencies.

\RequirePackage[top=2cm, bottom=2cm, inner=2cm, outer=2cm, includehead]{geometry}   % Set page margins.
\RequirePackage[latin]{babel}               % Set language.
\RequirePackage[osf,p]{libertine}           % Set font.
\RequirePackage[autocompile]{gregoriotex}   % gabc score rendering.
\RequirePackage{titlesec}                   % Title formats configuration.

%%% Page Headers.

% Use custom header.
\pagestyle{myheadings}

%%% Section title format.

% Remove section numbering.
\setcounter{secnumdepth}{-\maxdimen}
% Format section title: Large size, center, bold
\titleformat*{\section}{\centering\Large\bfseries}

%%% GregorioTex configuration

% Add space below the text.
\grechangedim{spacebeneathtext}{0.4 cm}{scalable}
% Larger staff
\grechangestaffsize{22}

\newcommand{\omtitle}[1]{
    \markboth{\MakeUppercase{#1}}{\MakeUppercase{#1}}

    {\centering\huge
        \textbf{#1}

    }
    \vspace{16pt}
}

\newcommand{\omsubtitle}[1]{
    {\centering\large
        #1

    }
    \vspace{16pt}
}
