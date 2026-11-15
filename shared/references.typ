#let source-sort-key(source) = {
  let title = lower(source.title).replace("ё", "е")
  let group = if title.match(regex("^[а-я]")) != none { "0" } else { "1" }
  group + title
}

#let sources = (
  (
    key: "ex-build", 
    title: "Building Tracks", 
    owner: "Exercism", 
    url: "https://exercism.org/docs/building/tracks"
  ),
  (
    key: "ex-faq", 
    title: "Frequently asked questions", 
    owner: "Exercism", 
    url: "https://exercism.org/docs/using/faqs/"
  ),
  (
    key: "mq", 
    title: "Quiz activity", 
    owner: "MoodleDocs, документация Moodle 5.1", 
    url: "https://docs.moodle.org/501/en/Quiz_activity"
  ),
  (
    key: "mr", 
    title: "Restrict access", 
    owner: "MoodleDocs, документация Moodle 5.1; редакция страницы 26.03.2024", 
    url: "https://docs.moodle.org/501/en/Restrict_access"
  ),
  (
    key: "gh", 
    title: "Reviewing proposed changes in a pull request", 
    owner: "GitHub Docs", 
    url: "https://docs.github.com/en/pull-requests/how-tos/review-pull-requests/reviewing-proposed-changes-in-a-pull-request"
  ),
  (
    key: "tzgen", 
    title: "TZGeneration", 
    owner: "vasyukov1, репозиторий шаблона Typst", 
    url: "https://github.com/vasyukov1/TZGeneration"
  ),
  (
    key: "ex-unlock", 
    title: "Unlocking Exercises", 
    owner: "Exercism", 
    url: "https://exercism.org/docs/building/product/unlocking-exercises/"
  ),
  (
    key: "mw-use", 
    title: "Using Wiki", 
    owner: "MoodleDocs, документация Moodle 5.1", 
    url: "https://docs.moodle.org/501/en/Using_Wiki"
  ),
  (
    key: "mw", 
    title: "Wiki activity", 
    owner: "MoodleDocs, документация Moodle 5.1", 
    url: "https://docs.moodle.org/501/en/Wiki_activity"
  ),
  (
    key: "mwork", 
    title: "Workshop activity", 
    owner: "MoodleDocs, документация Moodle 5.1", 
    url: "https://docs.moodle.org/501/en/Workshop_activity"
  ),
  (
    key: "sa", 
    title: "Адаптивные курсы", 
    owner: "Справочный центр Stepik", 
    url: "https://help.stepik.org/article/54737"
  ),
  (
    key: "sp",
    title: "Виды практических задач", 
    owner: "Справочный центр Stepik", 
    url: "https://help.stepik.org/article/54741"
  ),
  (
    key: "gost", 
    title: "ГОСТ 19.201-78. Единая система программной документации. Техническое задание. Требования к содержанию и оформлению", 
    owner: "Росстандарт, карточка стандарта", 
    url: "https://protect.gost.ru/gost/details/b64061cf-6bb2-4c75-aee9-18bb5e26e554"
  ),
  (
    key: "hse", 
    title: "Инструкция по подготовке документов к защите тем ВКР на образовательной программе «Программная инженерия» в 2026/27 учебном году", 
    owner: "НИУ ВШЭ. Москва, 2026", 
    url: "https://edu.hse.ru/mod/resource/view.php?id=2261071"
  ),
  (
    key: "bib", 
    title: "Методические указания по оформлению списка использованных источников и ссылок в текстах", 
    owner: "НИУ ВШЭ, ФКН, Департамент программной инженерии. Москва, 2025", 
    url: "https://edu.hse.ru/mod/folder/view.php?id=2260881"
  ),
  (
    key: "sp-author", 
    title: "Практические задания", 
    owner: "Справочный центр Stepik", 
    url: "https://help.stepik.org/article/54796"
  ),
).sorted(key: source-sort-key)

#let cite(..keys) = {
  let nums = keys.pos().map(k => sources.position(s => s.key == k) + 1).dedup().sorted()
  [\[#nums.map(str).join(", ")\]]
}

#let bibliography() = {
  set par(first-line-indent: 0pt, justify: false, leading: 0.5em)
  set text(size: 11pt)
  
  enum(..sources.map(s => [#s.title \[Электронный ресурс\] / #s.owner. — URL: #link(s.url)[#s.url] (дата обращения: 14.11.2026).]))
}
