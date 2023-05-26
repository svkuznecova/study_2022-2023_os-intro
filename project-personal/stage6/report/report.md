---
## Front matter
title: "Индивидуальный проект"
subtitle: "Шестой этап"
author: "Кузнецова София Вадимовна"

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

Добавить к сайту все остальные элементы.

# Задание

1. Сделать записи для персональных проектов.
2. Сделать пост по прошедшей неделе.
3. Добавить пост на тему: "Языки научного программирования".

# Выполнение лабораторной работы

Чтобы сделать записи для персональных проектов мы должны проделать данный путь: "work", "blog", "content", "project", "example". Внутри каталога "example" мы открываем файл "index.md".

![Открытие нужного файла для редактирования](image/1.png){ #fig:001 width=100% }

Внутри файла меняем титульное название, а также ссылки на твитер меняем на GitHub. После чего добавляем этапы реализации нашего индивидуального проекта.

![Редактирование файла проекта](image/2.png){ #fig:002 width=100% }

Теперь создадим каталоги для наших новых постов и назовём их: "Моя прошедшая неделя(4)" и "Языки научного программирования". Чтобы создать эти каталоги нужно проделать следующий путь: "work", "blog", "content", "post".

![Создание каталогов для новых постов](image/3.png){ #fig:003 width=100% }

Добавим информацию для наших постов, которую мы написали заранее.

![Добавление информации для поста "Моя прошедшая неделя(4)"](image/4.png){ #fig:004 width=100% }

![Добавление информации для поста "Языки научного программирования"](image/5.png){ #fig:005 width=100% }

Чтобы вся наша информация выгрузилась на сайт, откроем в каталоге "blog" терминал и запустим команду hugo.

![Запуск команды hugo](image/6.png){ #fig:006 width=100% }

Как только команда hugo выполнилась перейдём первым этапом в подкаталог "public" и проделаем указанные на скриншоте действия. Вторым этапом проделаем все те же самые действия, но уже в каталоге "blog".

![Выгрузка из подкаталога "public"](image/7.jpg){ #fig:007 width=100% }

![Выгрузка из каталога "blog"](image/8.jpg){ #fig:008 width=100% }

Последним шагом перейдём на еаш сайт и посмотрим итог работы.

![Записи для персональных проектов](image/9.png){ #fig:009 width=100% }

![Новые посты](image/10.png){ #fig:010 width=100% }

# Выводы

В ходе выполнения пятого этапа индивидуального проекта мы научились добавлять к сайту все остальные элементы.

