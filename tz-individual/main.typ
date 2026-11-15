#import "../shared/template.typ": *
#import "../shared/cfg.typ": *

#show: body => template(cfg: cfg(individual: true), body)

#include "sections/01-introduction.typ"
#include "sections/02-purpose.typ"
#include "sections/03-requirements.typ"
#include "sections/04-delivery.typ"
