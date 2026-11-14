// Адаптировано из TZGeneration (MIT), commit c6abbd686903098871e3f8189a84e94ba172b8d1.
// Убраны боковые штампы; оформление сверено с титульным листом ВКР из LMS.
#import "data.typ": *
#let doc-template(title: project, code: common-code, people: authors, annotation: [], body) = {
  set document(title: title + ". Проект технического задания", author: people.map(p => p.name))
  set text(font: "Times New Roman", size: 12pt, lang: "ru", hyphenate: true)
  set page(paper: "a4", margin: (left: 25mm, right: 15mm, top: 25mm, bottom: 20mm))
  set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm, spacing: 0.65em)
  set heading(numbering: "1.1")
  set list(indent: 1.25cm, body-indent: 0.5em, spacing: 0.45em)
  set enum(indent: 1.25cm, body-indent: 0.5em, spacing: 0.45em)
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 0pt, below: 1em)[#align(center)[#text(size: 13pt, weight: "bold")[#if it.numbering != none {counter(heading).display()} #upper(it.body)]]]
  }
  show heading.where(level: 2): it => block(above: 1.1em, below: 0.7em)[#text(weight: "bold")[#counter(heading).display() #it.body]]
  show heading.where(level: 3): it => block(above: 0.8em, below: 0.5em)[#text(weight: "bold")[#counter(heading).display() #it.body]]
  show table: set par(first-line-indent: 0pt, leading: 0.35em, spacing: 0.4em, justify: false)
  set table(stroke: 0.5pt, inset: 5pt)
  page(header: none, footer: none)[
    #set par(first-line-indent: 0pt, justify: false, leading: 0.35em)
    #align(center)[
      ПРАВИТЕЛЬСТВО РОССИЙСКОЙ ФЕДЕРАЦИИ\
      ФЕДЕРАЛЬНОЕ ГОСУДАРСТВЕННОЕ АВТОНОМНОЕ\
      ОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ВЫСШЕГО ОБРАЗОВАНИЯ\
      НАЦИОНАЛЬНЫЙ ИССЛЕДОВАТЕЛЬСКИЙ УНИВЕРСИТЕТ\
      «ВЫСШАЯ ШКОЛА ЭКОНОМИКИ»
      #v(3mm)
      Факультет компьютерных наук\
      Образовательная программа бакалавриата «Программная инженерия»
    ]
    #v(8mm)
    #grid(columns: (1fr, 1fr), gutter: 12mm,
      [СОГЛАСОВАНО\ #supervisor-position\ #v(5mm) \_\_\_\_\_\_\_\_\_ #supervisor\ «\_\_\_» \_\_\_\_\_\_\_\_\_ 2026 г.],
      [УТВЕРЖДАЮ\ Академический руководитель образовательной программы «Программная инженерия», старший преподаватель департамента программной инженерии\ #v(3mm) \_\_\_\_\_\_\_\_\_ Н. А. Павлочев\ «\_\_\_» \_\_\_\_\_\_\_\_\_ 2026 г.])
    #v(1fr)
    #align(center)[#text(size: 14pt, weight: "bold", title)\ #v(5mm) Техническое задание\ ЛИСТ УТВЕРЖДЕНИЯ\ #(code + "-ЛУ")\ #v(3mm) Проект к защите темы ВКР]
    #v(1fr)
    #align(right)[Исполнители:\ #for p in people [Студент группы #p.group\ \_\_\_\_\_\_\_\_\_ / #p.short /\ ] «\_\_\_» \_\_\_\_\_\_\_\_\_ 2026 г.]
    #v(1fr)
    #align(center)[Москва 2026]
  ]
  counter(page).update(1)
  page(header: none, footer: none)[
    #set par(first-line-indent: 0pt, justify: false)
    УТВЕРЖДЕН\ #(code + "-ЛУ")
    #v(1fr)
    #align(center)[#text(size: 14pt, weight: "bold", title)\ #v(8mm) Техническое задание\ #code\ #v(5mm) Проект к защите темы ВКР\ Листов #context counter(page).final().first()]
    #v(1fr)
    #align(center)[Москва 2026]
  ]
  set page(header: align(center)[#context counter(page).display()\ #text(size: 10pt, code)], footer: none)
  heading(numbering: none)[Аннотация]
  annotation
  heading(numbering: none, outlined: false)[Содержание]
  outline(title: none, depth: 2, indent: 1em)
  body
  heading(numbering: none)[Лист регистрации изменений]
  {
    set text(size: 9pt)
    table(columns: (9mm, 17mm, 17mm, 14mm, 19mm, 16mm, 20mm, 19mm, 12mm, 12mm),
      table.header([Изм.], [Изменён-
ные листы], [Заменён-
ные листы], [Новые листы], [Аннулиро-
ванные листы], [Всего листов], [№ документа], [Входящий № и дата], [Подп.], [Дата]),
      ..range(100).map(i => [#v(6mm)]))
  }
}
#let req(id, title, body) = block(breakable: false, above: 0.7em, below: 0.6em)[*#id. #title.* #body]
