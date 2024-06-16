# Curriculum Vitae

My CV in LaTeX format for quick adjustments and easy sharing.

## Generated PDF

|                                                   Page 1                                                   |                                                   Page 2                                                   |
| :--------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------: |
| [![Download PDF](images/preview-1.png?raw=true)](curriculum.pdf?raw=true "Click to download the full PDf") | [![Download PDF](images/preview-2.png?raw=true)](curriculum.pdf?raw=true "Click to Download the full PDF") |

## Compilation

`CVBuilder`, a ~~small~~ bash script crafted specifically for this task:

### Uso

```command
$ ./cvbuild -w curriculum
```

```command
$ ./cvbuild -o "$HOME/CV.pdf" -w
```

```command
CVBuild v0.4
A script to generate a Awesome LaTeX CV PDF file.

Usage: cvbuild [FILE]
       cvbuild [OPTION]... [FILE] [OUTFILE]
       cvbuild -l [OUTFILE]
Make a filename.pdf (or OUTFILE) from the input tex FILE.
If no input FILE is entered, the default 'curriculum' file is built.
If FILE has no extension '.tex' is added.

Options:
  -p (presentation) [FILE] Replace the default CV presentation text with
                           the passed FILE content.
  -o (output) [FILE]       Set the OUTFILE. Useful when no input FILE is
                           passed.
  -l (letter)              Set carta/letter as input FILE.
  -e (english)             Set ifspanish to false.
  -w (watch)               Open the pdf after the build process.
  -i (images)              Generate preview images.
  -h (help)                Display this help message.
  -v (version)             Display the version of CVBuild and exit.
```

### Requirements

Basic GNU/Linux dependencies with the following additional packages:

- xelatex
- texlive-fontsextra
- xdg-open

#### Gentoo

```command
emerge texlive-latexrecommended texlive-fontsextra texlive-latexextra
```

#### Fedora

```command
sudo dnf install texlive-latex texlive-xetex texlive-collection-latex \
    texlive-collection-latexrecommended texlive-xetex-def \
    texlive-collection-xetex texlive-sourcesanspro texlive-tcolorbox \
    texlive-babel-spanish texlive-hyphen-spanish
```

### Manual build

- Build in TeXstudio

- Build using xelatex:

```command
$ xelatex -synctex=1 -interaction=nonstopmode "curriculum".tex
```

---

Base design extensively adapted from https://github.com/posquit0/Awesome-CV.
