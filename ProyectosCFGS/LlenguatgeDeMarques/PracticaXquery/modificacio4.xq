for $menu in doc("parc.xml")/parc/restaurants/zona/restaurant/menuEspecial
return
rename node $menu as "petitMenu"