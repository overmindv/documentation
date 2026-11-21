#let accessed = "15.11.2026"

#let standards = (
  (key: "gost-19-101", title: "ГОСТ 19.101-77. Единая система программной документации. Виды программ и программных документов", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-102", title: "ГОСТ 19.102-77. Единая система программной документации. Стадии разработки", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-103", title: "ГОСТ 19.103-77. Единая система программной документации. Обозначения программ и программных документов", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-104", title: "ГОСТ 19.104-78. Единая система программной документации. Основные надписи", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-105", title: "ГОСТ 19.105-78. Единая система программной документации. Общие требования к программным документам", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-106", title: "ГОСТ 19.106-78. Единая система программной документации. Требования к программным документам, выполненным печатным способом", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost", title: "ГОСТ 19.201-78. Единая система программной документации. Техническое задание. Требования к содержанию и оформлению", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-301", title: "ГОСТ 19.301-79. Единая система программной документации. Программа и методика испытаний. Требования к содержанию и оформлению", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-401", title: "ГОСТ 19.401-78. Единая система программной документации. Текст программы. Требования к содержанию и оформлению", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-404", title: "ГОСТ 19.404-79. Единая система программной документации. Пояснительная записка. Требования к содержанию и оформлению", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-505", title: "ГОСТ 19.505-79. Единая система программной документации. Руководство оператора. Требования к содержанию и оформлению", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-603", title: "ГОСТ 19.603-78. Единая система программной документации. Общие правила внесения изменений", details: "М. : ИПК Издательство стандартов, 2001"),
  (key: "gost-19-604", title: "ГОСТ 19.604-78. Единая система программной документации. Правила внесения изменений в программные документы, выполненные печатным способом", details: "М. : ИПК Издательство стандартов, 2001"),
)

#let web-sources = (
  (key: "docker-engine", title: "Docker Engine", owner: "Docker Docs", url: "https://docs.docker.com/engine/"),
  (key: "docker-compose", title: "Docker Compose", owner: "Docker Docs", url: "https://docs.docker.com/compose/"),
  (key: "go-docs", title: "Documentation", owner: "The Go Programming Language", url: "https://go.dev/doc/"),
  (key: "exercism-docs", title: "Exercism Documentation", owner: "Exercism", url: "https://exercism.org/docs"),
  (key: "graphql-spec", title: "GraphQL Specification", owner: "GraphQL Foundation", url: "https://spec.graphql.org/"),
  (key: "moodle-docs", title: "Moodle 5.1 Documentation", owner: "MoodleDocs", url: "https://docs.moodle.org/501/en/Main_page"),
  (key: "postgres-docs", title: "PostgreSQL 18 Documentation", owner: "The PostgreSQL Global Development Group", url: "https://www.postgresql.org/docs/18/"),
  (key: "react-docs", title: "Quick Start", owner: "React Documentation", url: "https://react.dev/learn"),
  (key: "gh", title: "Reviewing proposed changes in a pull request", owner: "GitHub Docs", url: "https://docs.github.com/en/pull-requests/how-tos/review-pull-requests/reviewing-proposed-changes-in-a-pull-request"),
  (key: "ai-claude", title: "Set up Claude Code", owner: "Anthropic Documentation", url: "https://docs.anthropic.com/en/docs/claude-code/getting-started"),
  (key: "stepik-docs", title: "Stepik Help Center", owner: "Stepik", url: "https://help.stepik.org/"),
  (key: "ts-docs", title: "TypeScript Documentation", owner: "Microsoft", url: "https://www.typescriptlang.org/docs/"),
  (key: "ai-codex", title: "Using Codex with your ChatGPT plan", owner: "OpenAI Help Center", url: "https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan"),
  (key: "ai-study", title: "Using study mode in ChatGPT", owner: "OpenAI Help Center", url: "https://help.openai.com/en/articles/11780217-using-study-mode-in-chatgpt"),
)

#let source-sort-key(source) = {
  let title = lower(source.title).replace("е", "е")
  let group = if title.match(regex("^[а-я]")) != none { "0" } else { "1" }
  group + title
}

#let sources = (standards + web-sources).sorted(key: source-sort-key)

#let individual-source-keys = (
  "gost-19-101",
  "gost-19-102",
  "gost-19-103",
  "gost-19-104",
  "gost-19-105",
  "gost-19-106",
  "gost",
  "gost-19-301",
  "gost-19-401",
  "gost-19-404",
  "gost-19-505",
  "gost-19-603",
  "gost-19-604",
  "docker-compose",
  "docker-engine",
  "go-docs",
  "graphql-spec",
  "postgres-docs",
  "react-docs",
  "ts-docs",
  "stepik-docs",
  "moodle-docs",
  "exercism-docs",
  "ai-study",
)

#let materials-source-keys = (
  "gost-19-101",
  "gost-19-102",
  "gost-19-103",
  "gost-19-104",
  "gost-19-105",
  "gost-19-106",
  "gost",
  "gost-19-301",
  "gost-19-401",
  "gost-19-404",
  "gost-19-505",
  "gost-19-603",
  "gost-19-604",
  "docker-compose",
  "docker-engine",
  "go-docs",
  "graphql-spec",
  "postgres-docs",
  "react-docs",
  "ts-docs",
  "stepik-docs",
  "moodle-docs",
  "gh",
)

#let sources-for(scope) = if scope == "individual" {
  sources.filter(source => individual-source-keys.contains(source.key))
} else if scope == "materials" {
  sources.filter(source => materials-source-keys.contains(source.key))
} else {
  sources
}

#let cite-for(scope, ..keys) = {
  let selected = sources-for(scope)
  let unique = keys.pos().dedup()
  let ordered = unique.sorted(key: key => selected.position(source => source.key == key))
  let numbers = ordered.map(key => {
    let number = selected.position(source => source.key == key) + 1
    link(label("source-" + key), str(number))
  })
  text(size: 9pt)[\[#numbers.join([, ])\]]
}

#let cite(..keys) = cite-for("common", ..keys)
#let individual-cite(..keys) = cite-for("individual", ..keys)
#let materials-cite(..keys) = cite-for("materials", ..keys)

#let bibliography-entry(source) = {
  if source.at("details", default: none) != none {
    [#source.title. — #source.details.]
  } else {
    [#source.title \[Электронный ресурс\] / #source.owner. — URL: #link(source.url)[#source.url] (дата обращения: #accessed).]
  }
}

#let bibliography(scope: "common") = {
  let selected = sources-for(scope)
  set par(first-line-indent: 0pt, justify: false, leading: 0.5em)
  set text(size: 10.5pt)
  enum(..selected.map(source => [#bibliography-entry(source)#label("source-" + source.key)]))
}

#let analogs = (
  (name: "Stepik", role: "курсы и проверяемые задания", url: "https://stepik.org/"),
  (name: "Moodle", role: "учебная среда и коллективные активности", url: "https://moodle.org/"),
  (name: "Exercism", role: "практика программирования", url: "https://exercism.org/"),
  (name: "GitHub", role: "рецензирование и история изменений", url: "https://github.com/"),
  (name: "ChatGPT Study mode", role: "диалоговое обучение по текстовой цели", url: "https://chatgpt.com/studymode"),
  (name: "Codex", role: "агентная работа с программным кодом", url: "https://developers.openai.com/codex/"),
  (name: "Claude Code", role: "агентная работа с программным проектом", url: "https://docs.anthropic.com/en/docs/claude-code/overview"),
)

#let analog-appendix() = {
  pagebreak(weak: true)
  heading(numbering: none, outlined: true)[ПРИЛОЖЕНИЕ А. ССЫЛКИ НА АНАЛОГИ]
  set par(first-line-indent: 0pt)
  text(size: 10pt)[
    #table(
      columns: (1.2fr, 2fr, 2.8fr),
      stroke: 0.5pt + rgb("#a6a6a6"),
      inset: 5pt,
      table.header(
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Аналог*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Роль в сравнении*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Ссылка*],
      ),
      ..analogs.map(analog => (
        [#analog.name],
        [#analog.role],
        [#link(analog.url)[#analog.url]],
      )).flatten(),
    )
  ]
  parbreak()
  [Дата обращения: #accessed.]
}

#let individual-analogs = analogs.filter(analog => (
  "Stepik",
  "Moodle",
  "Exercism",
  "ChatGPT Study mode",
).contains(analog.name))

#let individual-analog-appendix() = {
  pagebreak(weak: true)
  heading(numbering: none, outlined: true)[ПРИЛОЖЕНИЕ А. ССЫЛКИ НА АНАЛОГИ]
  set par(first-line-indent: 0pt)
  text(size: 10pt)[
    #table(
      columns: (1.2fr, 2fr, 2.8fr),
      stroke: 0.5pt + rgb("#a6a6a6"),
      inset: 5pt,
      table.header(
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Аналог*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Роль в сравнении*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Ссылка*],
      ),
      ..individual-analogs.map(analog => (
        [#analog.name],
        [#analog.role],
        [#link(analog.url)[#analog.url]],
      )).flatten(),
    )
  ]
  parbreak()
  [Дата обращения: #accessed.]
}

#let materials-analogs = analogs.filter(analog => (
  "Stepik",
  "Moodle",
  "GitHub",
).contains(analog.name))

#let materials-analog-appendix() = {
  pagebreak(weak: true)
  heading(numbering: none, outlined: true)[ПРИЛОЖЕНИЕ А. ССЫЛКИ НА АНАЛОГИ]
  set par(first-line-indent: 0pt)
  text(size: 10pt)[
    #table(
      columns: (1.2fr, 2fr, 2.8fr),
      stroke: 0.5pt + rgb("#a6a6a6"),
      inset: 5pt,
      table.header(
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Аналог*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Роль в сравнении*],
        table.cell(fill: rgb("#d9eaf7"), align: center + horizon)[*Ссылка*],
      ),
      ..materials-analogs.map(analog => (
        [#analog.name],
        [#analog.role],
        [#link(analog.url)[#analog.url]],
      )).flatten(),
    )
  ]
  parbreak()
  [Дата обращения: #accessed.]
}
