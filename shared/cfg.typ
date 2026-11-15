#import "../data/data.typ": *
#import "hse_data.typ": *

#let cfg() = (
  project: (
    code: [RU.17701729.#data.project_code\-01 ТЗ 01-1],
    name: [#text(upper(data.project_name_ru)).],
  ),

  students: data.authors,

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

  annotation: hse_data.annotation,

  year: datetime.today().year(),
  city: "Москва"
)
