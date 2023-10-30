for $terror in doc("parc.xml")/parc/espectacles/zona/espectacle 
where $terror/tipus = "Passatge del terror"
return
insert node <preu>5</preu> before $terror/tipus