// fetch('./jsonData.json').then(resposne=>resposne.json()).then(json=>console.log(json[0]));
// document.getElementsByClassName
// let inputs = document.getElementsByClassName('actualizable');
// document.getElementById
function edit(formulario){
    let inputs = formulario.getElementsByClassName('actualizable');
    let aceptar = formulario.getElementsByClassName('aceptar');
    for (let i = 0; i < inputs.length; i++) {
        inputs[i].readOnly = false;
    }
    aceptar[0].disabled = false;
}
let confirmar;
function del(formulario){

    confirmar = confirm('¿Desea eliminar este registro?');
    if(confirm){
        formulario.submit();
    }else{
        return;
    }
}

function listado(){
    document.getElementById('listado').classList.toggle('d-none')
}