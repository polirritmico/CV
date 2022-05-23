Curriculum Vitae
================

Mi CV en formato LaTeX para su rápido ajuste y compartición.

## PDF Generado

| Pág. 1 | Pág. 2 |
|:---:|:---:|
| [![Descargar PDF](images/preview-1.png?raw=true)](curriculum.pdf?raw=true "Descargar el PDF")  | [![Descargar PDF](images/preview-2.png?raw=true)](curriculum.pdf?raw=true "Descargar el PDF") |

## Compilación

`CVBuilder`, un script bash creado por mi específicamente para esta tarea:

```command
CVBuild v0.1
A script to generate a Awesome LaTeX CV PDF file.

Usage: cvbuilder [FILE]
       cvbuilder [OPTION]... [FILE] [OUTFILE]
       cvbuilder -l [OUTFILE]
Make a filename.pdf (or OUTFILE) from the input tex FILE.
If no input FILE is entered, the default 'curriculum' file is built.
If FILE has no extension, '.tex' is added.

Options:
  -p|presentation [FILE]   Replace the default CV presentation text with the
                           passed FILE content.
  -o|output [FILE]         Set the OUTFILE. Useful when no input FILE is passed.
  -l|letter                Set $DEFAULT_LETTER as input FILE.
  -w|watch                 Open and view the pdf after the build process.
  -h|help                  Display this help message.
  -v|version               Display the version of $SCRIPT_NAME and exit.
```

### Alternativas

* TeXstudio

* Directamente con:
```command
$ xelatex -synctex=1 -interaction=nonstopmode "curriculum".tex
```

## Requirimientos

Programas básicos de cualquier sistema operativo GNU/Linux con los siguientes
paquetes adicionales:

* xelatex (en el paquete texlive-latexextra, latexrecommended o texlive-xetex)
* xdg-open (xdg-utils)

---

Diseño ajustado desde https://github.com/posquit0/Awesome-CV.
