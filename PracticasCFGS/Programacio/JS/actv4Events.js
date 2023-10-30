// Llista de fruites:
const fruites = [{ nom: 'Pomes Golden', preu: 2.98 },
                 { nom: 'Plàtans de Canàries', preu: 3.48 },
                 { nom: 'Taronges extra', preu: 3.48 },
                 { nom: 'Pera Llimonera', preu: 2.48 }];

// El vostre codi:
let ticket = [ ];
const select = document.querySelector('select');

//añadiendo las opciones 
for (let i= 0; i < fruites.length; i++) {
    opcio = document.createElement('option');
    text = document.createTextNode(fruites[i].nom);
    opcio.appendChild(text);
    select.insertAdjacentElement("beforeend",opcio);
}

let total = 0;

const form = document.querySelector('form[action="/nowhere"]');
form.addEventListener('submit', function(e){
    e.preventDefault();

    opt = select.options[select.selectedIndex].text;
    const preu =  (fruites.find(preu => preu.nom === opt)).preu;
    quantitat = (document.querySelector('input[id="qty"]')).value;

    suma = preu * quantitat;
    total = total + suma;

    llista = document.querySelector('ul');
    compra = document.createElement('li');
    text = document.createTextNode('Producte: '+opt+'.   Preu: '+preu+' x '+quantitat+' = '+suma);
    compra.appendChild(text);
    llista.insertAdjacentElement("beforeend",compra);

    preuTotal = document.querySelector('h3[class="totalTiquet"]');
    preuTotal.textContent = ('Total: '+total);
})
