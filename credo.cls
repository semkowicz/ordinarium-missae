\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{credo}[2026-04-16 Credo class]

%%% Base class.

\LoadClass[12pt,a4paper]{report}

%%% Dependencies.

\RequirePackage[top=1.5cm, bottom=1.5cm, inner=1.5cm, outer=1.5cm]{geometry}   % Set page margins.
\RequirePackage[latin]{babel}               % Set language.
\RequirePackage[osf,p]{libertine}           % Set font.
\RequirePackage[autocompile]{gregoriotex}   % gabc score rendering.
\RequirePackage{titlesec}                   % Title formats configuration.

\newcommand{\omtitle}[1]{
    {\centering\huge
        \textbf{#1}

    }
    \vspace{16pt}
}
