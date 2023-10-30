for $attraccio in doc("parc.xml")/parc/atraccions/zona/atraccio
where $attraccio/servei='PassPreferent'
return 
insert node attribute vip{"1"} into $attraccio/servei[.='PassPreferent']