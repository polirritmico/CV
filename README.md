Curriculum Vitae
================

Mi CV en formato LaTeX para su rápido ajuste y compartición.

## CV en PDF

| Pág. 1 | Pág. 2 |
|:---:|:---:|
| [![Descargar PDF](images/preview-1.png?raw=true)](curriculum.pdf?raw=true "Descargar el PDF")  | [![Descargar PDF](images/preview-2.png?raw=true)](curriculum.pdf?raw=true "Descargar el PDF") |

## Compilación

Utilice `cvbuilder`

```command
Usage: cvbuilder [FILE]
       cvbuilder [OPTION]... [FILE] [OUTFILE]
       cvbuilder -l [OUTFILE]
Make a filename.pdf (or OUTFILE) from the input tex FILE.
If no input FILE is entered, the default $DEFAULT_INPUT_FILE file is built.
If FILE has no extension '.tex' is added.

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

* Con el botón en TeXstudio

* Directamente con:
```command
$ xelatex -synctex=1 -interaction=nonstopmode "curriculum".tex
```

---

Diseño ajustado desde https://github.com/posquit0/Awesome-CV.
