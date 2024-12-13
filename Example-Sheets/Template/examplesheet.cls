\ProvidesClass{examplesheet}[2024//12/12 v0.1 Example Sheet Class]

\LoadClass[11pt,a4paper,notitlepage,oneside,onecolumn]{article}

% Package imports
\usepackage[a4paper, left=0.75in, right=0.75in, top=0.75in, bottom=0.5in]{geometry} % Margins
% Suppress page numbers
\pagestyle{empty} 

% Counters
\newcounter{qcounter}
\newcounter{partcounter}[qcounter]

% Lengths
\def\pageindent{0.3in}
\def\qindent{0.32in}
\def\partindent{0.45in}
\setlength{\parindent}{0pt} % Remove paragraph indent
\setlength{\parskip}{10pt} % Set parskip in main body

% Question Environment
\newenvironment{q}[1][]{
\stepcounter{qcounter}
\begin{minipage}[t]{\qindent}\theqcounter.#1\end{minipage}\begin{minipage}[t]{\dimexpr\linewidth-\qindent}
\setlength{\parskip}{7pt} % Set parskip in questions
}
{\end{minipage}\par}

% Part Environment
\newenvironment{qpart}[1][]{
\stepcounter{partcounter}
\begin{minipage}[t]{\partindent}(\roman{partcounter})#1\end{minipage}\begin{minipage}[t]{\dimexpr\linewidth-\partindent}
\setlength{\parskip}{1pt} % Set parskip in parts
}
{\end{minipage}\par}

