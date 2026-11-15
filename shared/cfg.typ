#import "../data/data.typ": *
#import "hse_data.typ": *
#import "references.typ": cite, individual-cite, materials-cite

#let cfg(individual: false, individual-author: 0) = {
  let part-ru = if individual-author == 1 { data.individual_materials_part_ru } else { data.individual_part_ru }
  let part-en = if individual-author == 1 { data.individual_materials_part_en } else { data.individual_part_en }
  let document-code = if individual { "02-" + str(individual-author + 1) } else { "01-1" }

  (
  project: (
    code: [RU.17701729.#data.project_code\-01 ТЗ #document-code],
    name: [#text(upper(data.project_name_ru + if individual { part-ru } else { "" })).],
  ),

  students: if individual { (data.authors.at(individual-author),) } else { data.authors },

  agreed_by: (
    name: data.supervisor,
    position: data.supervisor_position,
  ),

  approved_by: (
    name: hse_data.approved_by_name,
    position: hse_data.approved_by_position,
  ),

  university_name: hse_data.university_name,
  faculty_name: hse_data.faculty_name,
  edu_program_name: hse_data.edu_program_name,

  annotation: (hse_data.annotation)(
    data.project_name_ru + if individual { part-ru } else { "" },
    cite-fn: if not individual { cite } else if individual-author == 1 { materials-cite } else { individual-cite },
  ),

  year: datetime.today().year(),
  city: "Москва"
  )
}
