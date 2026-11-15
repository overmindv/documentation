#import "../shared/template.typ": *
#import "../shared/cfg.typ": *
#import "../shared/references.typ": *


// Content
#show: body => template(cfg: cfg(), body)

#include "sections/01-introduction.typ"
#include "sections/02-purpose.typ"
#include "sections/03-requirements.typ"
#include "sections/04-delivery.typ"
#include "sections/05-development.typ"
