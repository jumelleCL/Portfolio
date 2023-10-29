let input = prompt('Escull una opció:');

const cosesAFer = ['Endreçar', 'Netejar'];

while (input !== 's' && input !== 'S') {
    // Poseu el vostre codi aquí:
    input = input.toLowerCase();
    switch(input){
        case 'a':
            tareaNova = prompt('Nova tarea a afegir:');
            cosesAFer.push(tareaNova);
            break;
        case 'l':
            console.log(cosesAFer);
            break;
        case 'e':
            let borrar = prompt('Element a esborra');
            cosesAFer.splice(cosesAFer.indexOf(borrar),1);
            break;
    }

    input = prompt('Escull una opció:');
}