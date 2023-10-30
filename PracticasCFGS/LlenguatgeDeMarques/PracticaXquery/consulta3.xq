for $passi in doc("parc.xml")/parc/espectacles/zona/espectacle/horari/passi
where $passi/horaInici = '12:30'
return concat('Total passis que comencen a les 12:30: ',count($passi))