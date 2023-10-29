for $vip in doc("parc.xml")/parc/espectacles/zona/espectacle/servei
where $vip/text()="Seient VIP"
return 
delete node  doc("parc.xml")/parc/espectacles/zona/espectacle/servei/$vip