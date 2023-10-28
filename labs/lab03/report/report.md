---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Студент: Калашникова Ольга Сергеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоить процедуры оформления отчётов с помощью легковесного языка разметки Markdown.

# Задание

1. Обновить локальный репозиторий, скачав изменения из удалённого репозитория.
2. Сделать отчёт по лабораторной работе №3 в формате Markdown. Предоставить отчёт в трёх форматах (pdf, docx, md).
3. Сделать отчёт по лабораторной работе №2 в формате Markdown. Предоставить отчёт в трёх форматах (pdf, docx, md).

# Выполнение лабораторной работы

## Освоение Markdown

С помощью команды ‘git pull’ обновляем локальный репозиторий (рис. [-@fig:001])

![Обновление локального репозитория при помощи команды git pull](Изображения/lab3/gitpull.png){ #fig:001 width=70% }

Переходим в каталог с шаблоном отчёта по лабораторной работе №3 и проводим компиляцию шаблона с использованием Makefile, используя команду ‘make’ (рис. [-@fig:002])

![Компиляция шаблона с использованием Makefile](зображения/lab3/make.png){ #fig:002 width=70% }

Проверяем файлы «report.pdf» и «report.docx», которые должны были сгенерироваться при успешной компиляции (рис. [-@fig:003]), (рис. [-@fig:004])

![Проверка сгенерированных файлов при помощи ls](Изображения/lab3/ls1.png){ #fig:003 width=70% }

![Проверка сгенерированных файлов](Изображения/lab3/check.png){ #fig:004 width=70% }

Удаляем полученные файлы с использованием Makefile(команда ‘make clean’) (рис. [-@fig:005])

![Удаление файлов при помощи команды make clean](Изображения/lab3/makeclean.png){ #fig:005 width=70% }

Проверяем, что файлы удалены (рис. [-@fig:006])

![Проверка](Изображения/lab3/ls2.png){ #fig:006 width=70% }

Открываем файл «report.md» с помощью текстового редактора gedit (рис. [-@fig:007])

![Открытие файла](Изображения/lab3/gedit.png){ #fig:007 width=70% }

# Выводы

В ходе выполнения лабораторной работы мы освоили процедуры оформления отчётов с помощью легковесного языка разметки Markdown.

