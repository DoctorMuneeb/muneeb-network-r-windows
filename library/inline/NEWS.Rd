\name{NEWS}
\title{News for Package \pkg{inline}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/inline/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/inline/issues/#1}{##1}}

\section{Changes in inline version 0.3.21 (2025-01-08)}{
  \itemize{
    \item Refine use of \code{Rf_warning} in \code{cfunction} setting \code{-DR_NO_REMAP}
    ourselves to get R version independent state
  }
}

\section{Changes in inline version 0.3.19 (2021-05-25)}{
  \itemize{
    \item Documentation for \code{moveDLL} was updated and extended
    (Johannes in \ghpr{23}).
    \item A few more tests were made conditional on the test platform (Dirk 
    in \ghpr{24}).
  }
}

\section{Changes in inline version 0.3.18 (2021-05-17)}{
  \itemize{
    \item The \code{moveDLL} code and tests were updated for changed in
    R-devel (Johannes in \ghpr{22} fixing \ghit{21}).
  }
}

\section{Changes in inline version 0.3.17 (2020-11-30)}{
  \itemize{
    \item Unit testing is now supported via \pkg{tinytest} (Johannes in
    \ghpr{15} addressing \ghit{14}).
    \item CI was updated to use focal and run.sh from r-ci on Travis and
    GitHub Actions (Dirk)
    \item The writing and reading of compiled code was refactored and
    extended (Johannes in \ghpr{16} fixing \ghit{13}).
    \item Some minor problems related to CRAN checks and tests were corrected
    (Johannes and Dirk in \ghpr{17}, Johannes in \ghpr{18}, \ghpr{19}, \ghpr{20}).
    \item Small stylistic updates have been applied to some R and Rd
    files (Dirk).
  }
}

\section{Changes in inline version 0.3.16 (2020-09-06)}{
  \itemize{
    \item Maintenance updates to README.md standardizing badges (Dirk).
    \item Maintenance update to Travis CI setup (Dirk).
    \item Switch to using \code{system2()} for better error diagnostics
    (Ben Goodrich in \ghpr{12}).
  }
}

\section{Changes in inline version 0.3.15 (2018-05-18)}{
  \itemize{
    \item Correct \code{requireNamespace()} call thanks (Alexander
    Grueneberg in \ghpr{5}).
    \item Small simplification to \code{.travis.yml}; also switch to https.
    \item Use \code{seq_along} instead of \code{seq(along=...)} (Watal
    M. Iwasaki) in \ghpr{6}).
    \item Update package manual page using references to
    \code{DESCRIPTION} file [CRAN request].
    \item Minor packaging updates.
  }
}

\section{Changes in inline version 0.3.14 (2015-04-11)}{
  \itemize{
    \item Removed call to \code{Rcpp::RcppLdFlags()} which is no longer needed
    \item With move of repository to GitHub, added a \code{.travis.yml}
    file and corresponding entry in \code{.Rbuildignore}
    \item Replaced calls to \code{require()} with calls to
    \code{requireNamespace()}; also updated one call
    \item Much improved support for Fortran and Fortran95 thanks to
      Karline Soetaert who became a package co-author
    \item New helper functions \code{writeDynLib} and \code{readDynLib}
      as well as new methods \code{print} and \code{code} (also by Karline)
  }
}

\section{Changes in inline version 0.3.13 (2013-08-08)}{
  \itemize{
    \item Applied contributed patch by Mikhail Umorin which corrects
    \code{cfunction()} in the case of a \code{list} of signature and
    body arguments.
  }
}

\section{Changes in inline version 0.3.12 (2013-06-12)}{
  \itemize{
    \item Align \code{package.skeleton} with the R-devel version of the
    function which no longer has a \code{NAMESPACE} argument. 
    \item Remove copy of LGPL in source archive as \code{R CMD check}
    now complains about it. License status continues to be specified in
    file \code{DESCRIPTION}.
  }
}

\section{Changes in inline version 0.3.11 (2013-02-26)}{
  \itemize{
    \item Fix bug in \code{cfunction} for \code{.C} convention with raw vectors.
    \item Correct \code{cfunction} to use \code{.Platform$dynlib.ext} as
      the file extension for the library file (unless on Windows).
    \item Allow \code{rcpp} wrapper to pass another plugin (as eg RcppArmadillo)
  }
}

\section{Changes in inline version 0.3.10 (2012-10-03)}{
  \itemize{
    \item \code{getDynLib()} error message corrected as suggested by
    Yasir Suhail
    \item Added \code{rcpp()} wrapper for \code{cxxfunction()} which
    sets \code{plugin="Rcpp"}
    \item Converted NEWS to NEWS.Rd
    \item New maintainer, after having coordinated releases (along with
    Romain) since 0.3.5 in June 2010
  }
}
\section{Changes in inline version 0.3.9 (2012-10-02)}{
  \itemize{
    \item Uncoordinating hijacking of package by CRAN maintainers with a
    single word change in cfunction.R to prevent an error under an
    unreleased version of R
  }
}
\section{Changes in inline version 0.3.8 (2010-12-07)}{
  \itemize{
    \item faster \code{cfunction} and \code{cxxfunction} by loading and
    resolving the routine at \dQuote{compile} time
  }
}
\section{Changes in inline version 0.3.7 (2010-11-02)}{
  \itemize{
    \item fix \code{package.skeleton} for use with just a single function
  }
}
\section{Changes in inline version 0.3.6 (2010-07-29)}{
  \itemize{
    \item compileCode now grabs the error message generated by the compiler and 
    uses it in in the error message
  }
}
\section{Changes in inline version 0.3.5 (2010-06-02)}{
  \itemize{
    \item new R function \code{cxxfunction} to generate an R function
    with inlined C++ code using the \code{.Call} calling convention. The
    function was introduced to accomodate the needs of the Rcpp family
    of packages.
    \item new R functions \code{getPlugin} and \code{registerPlugin} to
    manage the plugin system of \code{cxxfunction}.
    \item The function \code{package.skeleton} (from utils) is made
    generic and a method is available to generate a package skeleton
    from a function generated by \code{cfunction} or \code{cxxfunction}
  }
}
