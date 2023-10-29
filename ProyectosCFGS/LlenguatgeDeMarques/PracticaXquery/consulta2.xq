for $atraccio in doc("parc.xml")/parc/atraccions/zona/atraccio
where $atraccio/edatMinima >=12  and $atraccio/intensitat = "Forta"
return $atraccio