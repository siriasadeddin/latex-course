latex-course
============

Diapositivas para un curso introductorio de LaTeX. Estas presentaciones y sus respectivos códigos fuentes se encuentran disponibles en [este repositorio de github](https://github.com/guanucoluis/latex-course) bajo la licencia permisiva (MIT license). Es importante aclarar que esta versión se encuentra basada en el trabajo original de John Lees-Miller. Se puede acceder a la versión en inglés desde su repositorio [latex-course](https://github.com/jdleesmiller/latex-course).

El principal objetivo es conseguir que un usario puede escribir en LaTeX tan rápido sea posible. El material es presentado como un conjunto de ejemplos, conceptos y técnicas más detalladas a medida que se avanza. Cada Parte incluye ejercitación que puede ser completada sobre la plataforma [Overleaf](https://www.overleaf.com). Overleaf ofrece un editor de LaTeX en forma libre, por lo que no debe preocuparse de las herramientas necesarias para generar documentos LaTeX. Esto le evita tener que instalar los paquetes sobre su computadora. 

Estas diapositivas fueron pensadas para presentaciones de dos horas en workshops, pero es probable que haya suficiente material para varios talleres, por lo que se dividen en tres partes:

1. [Conceptos Básicos](http://guanucoluis.github.io/latex-course/es/part1.pdf): ideas, sintaxis, ecuaciones, entornos, paquetes.

1. [Documentos Estructurados y Más](http://guanucoluis.github.io/latex-course/es/part2.pdf): títulos, secciones, referencias cruzadas, figuras, tablas, bibliografías.

1. [No Solo Documentos de Texto: Presentaciones y Más](http://guanucoluis.github.io/latex-course/es/part3.pdf): recapitulación (ejercicios), presentaciones con beamer, dibujos con tikz.

Siéntase libre de utilizar como más le guste estos contenidos -- contribuciones, bienvenidas sean!

Development
-----------

You may need to install some extra LaTeX packages and system packages in order
to build the slides yourself.

1. The [minted package](http://www.ctan.org/pkg/minted) provides syntax
highlighting. It is installed by default in recent versions of TeX Live.

1. The minted package calls out to the
[pygments syntax highlighter](http://pygments.org/), which is written in python.
The relevant package is python-pygments in Debian / Ubuntu
(`sudo apt-get install python-pygments`).

1. There is a simple `Makefile` that manages the build. To use it, you'll
probably need to be on Linux, and you will need `make`.

The slides include links to exercises that open in Overleaf. The exercise
source files are hosted on github. If you want to use exercise files in another
location, you can [fork](https://help.github.com/articles/fork-a-repo) this
github repository and then change the `\fileuri` macro in `preamble.tex`:
```
\newcommand{\fileuri}{https://raw.github.com/jdleesmiller/latex-course/master/en}
```
so that instead of pointing to `jdleesmiller/latex-course`, it points to
`your-github-user-name/latex-course`. Then, once you've pushed your changed
exercise files to github, the slides will load them up in Overleaf.

The `deploy-to-gh-pages.sh` script builds the slides using the Makefile and
copies the slides over to the `gh-pages` branch, which is available at
`https://jdlm.info/latex-course` thanks to
[github pages](http://pages.github.com/).

License
-------

The slides and source are released under the MIT license. See the LICENSE file.

Credits
-------

* Diana A -- found that exercise links had broken
* Sana A -- pointed out an error in part 1
* Andy Roberts -- the chick(en) image is from [one of his articles](http://www.andy-roberts.net/writing/latex/importing_images)
* Ruby Trinh -- for organising the original short courses
