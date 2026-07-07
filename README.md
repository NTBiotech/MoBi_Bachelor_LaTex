# Bachelor's Thesis LaTeX Template (MoBi)

A LaTeX template for Bachelor's theses at the Molecular Biotechnology (MoBi) program, following the institute's 2024 formatting standards. It is not an official template and is not guaranteed to match every requirement of the institute — check with your examiner/coordinator before submission.

## Structure

```
main/
  main.tex              # document root, build this file
  BachelorsIPMB.sty      # style/package configuration
sections/
  Abstract.tex           # abstract + German "Zusammenfassung"
  Introduction.tex
  Methods.tex             # usage instructions for this template (read this first)
  Results.tex
  Discussion.tex
misc/
  Titlepage.tex
  Acknowledgments.tex
  IndependenceDeclaration.tex
  environment.tex         # conda environment table
  KI_Hilfsmittel.tex      # table of AI tools used
  Appendix.tex
  yourlibrary.bib         # your citations go here
figures/                  # figures, organized by section
tables/                   # CSV files used to typeset tables
convert_figures.sh        # converts figure PDFs to PNGs for faster builds
```

## Getting started

1. Install a LaTeX distribution (see `sections/Introduction.tex` for pointers), e.g. via [TeX Live](https://www.latex-project.org/get/#tex-distributions).
2. Build `main/main.tex` (e.g. with the [LaTeX Workshop](https://open-vsx.org/vscode/item?itemName=James-Yu.latex-workshop) extension for VSCode, or `latexmk` on the command line).
3. Fill in the placeholder text in `misc/Titlepage.tex`, `sections/Abstract.tex`, `sections/Introduction.tex`, `sections/Results.tex`, `sections/Discussion.tex`, and `misc/Acknowledgments.tex`.
4. Replace `misc/yourlibrary.bib` with your own bibliography file and update the `\addbibresource` line in `main/main.tex` accordingly.
5. Read `sections/Methods.tex` for detailed instructions on figures, tables, citations, cross-references, and abbreviations — this section documents how to use the template itself and should be removed/replaced with your actual methods once you're familiar with it.

## Figures

Save figures as vector PDFs/SVGs. Run `./convert_figures.sh` to generate PNG copies for faster compilation during drafting, and toggle the `\DeclareGraphicsExtensions` line in `main/BachelorsIPMB.sty` to switch between PNG (fast drafts) and PDF (final build).

## License

This template is released under the MIT License — see [LICENSE](LICENSE). Your thesis content is, of course, your own.
